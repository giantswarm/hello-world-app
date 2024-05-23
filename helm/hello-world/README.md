# hello-world

![Version: 2.3.1](https://img.shields.io/badge/Version-2.3.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.2.0](https://img.shields.io/badge/AppVersion-0.2.0-informational?style=flat-square)

A chart that deploys a basic hello world site and lets you test values merging of user values configmap and secrets.

**Homepage:** <https://github.com/giantswarm/hello-world-app>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Giant Swarm - Honeybadger | <team-honeybadger@giantswarm.io> | <https://www.giantswarm.io/about#honeybadger> |

## Source Code

* <https://github.com/giantswarm/hello-world-app>
* <https://github.com/giantswarm/helloworld>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `true` |  |
| autoscaling.maxReplicas | int | `10` |  |
| autoscaling.minReplicas | int | `3` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` |  |
| fullnameOverride | string | `""` |  |
| global.podSecurityStandards.enforced | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"quay.io"` |  |
| image.repository | string | `"giantswarm/helloworld"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt-giantswarm"` |  |
| ingress.className | string | `"nginx"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts[0].host | string | `"hello.cluster.provider.gigantic.io"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"Prefix"` |  |
| ingress.tls[0].hosts[0] | string | `"hello.cluster.provider.gigantic.io"` |  |
| ingress.tls[0].secretName | string | `"hello-world-tls"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podDisruptionBudget.enabled | bool | `true` |  |
| podDisruptionBudget.maxUnavailable | int | `1` |  |
| podDisruptionBudget.minAvailable | int | `1` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"50m"` |  |
| resources.limits.memory | string | `"100M"` |  |
| resources.requests.cpu | string | `"10m"` |  |
| resources.requests.memory | string | `"50M"` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1000` |  |
| securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| service.annotations | object | `{}` |  |
| service.labels | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `false` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| strategy.rollingUpdate.maxSurge | int | `1` |  |
| strategy.rollingUpdate.maxUnavailable | int | `1` |  |
| strategy.type | string | `"RollingUpdate"` |  |
| tolerations | list | `[]` |  |
| topologySpreadConstraints[0].labelSelector.matchLabels."app.kubernetes.io/instance" | string | `"{{ .Release.Name }}"` |  |
| topologySpreadConstraints[0].labelSelector.matchLabels."app.kubernetes.io/name" | string | `"{{ include \"hello-world.name\" . }}"` |  |
| topologySpreadConstraints[0].maxSkew | int | `1` |  |
| topologySpreadConstraints[0].topologyKey | string | `"topology.kubernetes.io/zone"` |  |
| topologySpreadConstraints[0].whenUnsatisfiable | string | `"ScheduleAnyway"` |  |
| topologySpreadConstraints[1].labelSelector.matchLabels."app.kubernetes.io/instance" | string | `"{{ .Release.Name }}"` |  |
| topologySpreadConstraints[1].labelSelector.matchLabels."app.kubernetes.io/name" | string | `"{{ include \"hello-world.name\" . }}"` |  |
| topologySpreadConstraints[1].maxSkew | int | `1` |  |
| topologySpreadConstraints[1].topologyKey | string | `"kubernetes.io/hostname"` |  |
| topologySpreadConstraints[1].whenUnsatisfiable | string | `"ScheduleAnyway"` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
