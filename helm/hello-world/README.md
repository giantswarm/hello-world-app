# hello-world

![Version: 2.11.0](https://img.shields.io/badge/Version-2.11.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.3.0](https://img.shields.io/badge/AppVersion-0.3.0-informational?style=flat-square)

A chart that deploys a basic hello world site and lets you test values merging of user values configmap and secrets.

**Homepage:** <https://github.com/giantswarm/hello-world-app>

## Source Code

* <https://github.com/giantswarm/helloworld>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity rules for pod scheduling |
| autoscaling | object | `{"enabled":true,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80,"targetMemoryUtilizationPercentage":80}` | This section is for setting up autoscaling more information can be found here: https://kubernetes.io/docs/concepts/workloads/autoscaling/ |
| autoscaling.enabled | bool | `true` | Enable autoscaling |
| autoscaling.maxReplicas | int | `100` | Maximum number of replicas |
| autoscaling.minReplicas | int | `1` | Minimum number of replicas |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | Target CPU utilization percentage |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` | Target memory utilization percentage |
| fullnameOverride | string | `""` | Override the full name of the chart |
| image | object | `{"name":"giantswarm/helloworld","pullPolicy":"IfNotPresent","registry":"gsoci.azurecr.io","tag":""}` | This sets the container image more information can be found here: https://kubernetes.io/docs/concepts/containers/images/ |
| image.name | string | `"giantswarm/helloworld"` | Container image repository |
| image.pullPolicy | string | `"IfNotPresent"` | This sets the pull policy for images. |
| image.registry | string | `"gsoci.azurecr.io"` | Container image registry |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | This is for the secretes for pulling an image from a private repository more information can be found here: https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/ |
| ingress | object | `{"annotations":{"cert-manager.io/cluster-issuer":"letsencrypt-giantswarm"},"className":"nginx","enabled":true,"hosts":[{"host":"hello.cluster.provider.gigantic.io","paths":[{"path":"/","pathType":"Prefix"}]}],"tls":[{"hosts":["hello.cluster.provider.gigantic.io"],"secretName":"hello-world-tls"}]}` | This block is for setting up the ingress more information can be found here: https://kubernetes.io/docs/concepts/services-networking/ingress/ |
| ingress.annotations | object | `{"cert-manager.io/cluster-issuer":"letsencrypt-giantswarm"}` | Ingress annotations |
| ingress.className | string | `"nginx"` | Ingress class name |
| ingress.enabled | bool | `true` | Enable ingress |
| ingress.hosts | list | `[{"host":"hello.cluster.provider.gigantic.io","paths":[{"path":"/","pathType":"Prefix"}]}]` | Ingress hosts configuration |
| ingress.tls | list | `[{"hosts":["hello.cluster.provider.gigantic.io"],"secretName":"hello-world-tls"}]` | TLS configuration for ingress |
| livenessProbe | object | `{"httpGet":{"path":"/","port":"http"}}` | This is to setup the liveness and readiness probes more information can be found here: https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/ |
| livenessProbe.httpGet.path | string | `"/"` | Probe path |
| livenessProbe.httpGet.port | string | `"http"` | Probe port |
| nameOverride | string | `""` | This is to override the chart name. |
| nodeSelector | object | `{}` | Node selector for pod scheduling |
| podAnnotations | object | `{}` | This is for setting Kubernetes Annotations to a Pod. For more information checkout: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ |
| podDisruptionBudget | object | `{"enabled":true,"maxUnavailable":1}` | Pod disruption budget configuration |
| podDisruptionBudget.maxUnavailable | int | `1` | PodDisruptionBudget specification. Define either 'minAvailable' or 'maxUnavailable', never both. minAvailable: 1 |
| podLabels | object | `{}` | This is for setting Kubernetes Labels to a Pod. For more information checkout: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ |
| podSecurityContext | object | `{}` | Pod security context configuration |
| readinessProbe | object | `{"httpGet":{"path":"/","port":"http"}}` | Readiness probe configuration |
| readinessProbe.httpGet.path | string | `"/"` | Probe path |
| readinessProbe.httpGet.port | string | `"http"` | Probe port |
| replicaCount | int | `1` | This will set the replicaset count more information can be found here: https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/ |
| resources | object | `{"limits":{"cpu":"400m","memory":"100Mi"},"requests":{"cpu":"200m","memory":"50Mi"}}` | Resource requests and limits for the container |
| resources.limits.cpu | string | `"400m"` | CPU limit |
| resources.limits.memory | string | `"100Mi"` | Memory limit |
| resources.requests.cpu | string | `"200m"` | CPU request |
| resources.requests.memory | string | `"50Mi"` | Memory request |
| route | object | `{"additionalRules":[],"annotations":{},"enabled":false,"filters":[],"hostnames":[],"kind":"HTTPRoute","labels":{},"matches":[{"path":{"type":"PathPrefix","value":"/"}}],"name":"","parentRefs":[],"securityPolicy":{"annotations":{},"enabled":false,"labels":{}}}` | This block is for setting up Gateway API routes. More information can be found here: https://gateway-api.sigs.k8s.io/ |
| route.additionalRules | list | `[]` | Additional custom rules that can be added to the route. Supports templating |
| route.annotations | object | `{}` | Route annotations |
| route.enabled | bool | `false` | Enable Gateway API route |
| route.filters | list | `[]` | Filters define the filters that are applied to requests that match this rule |
| route.hostnames | list | `[]` | Hostnames that the route should match. Supports templating with {{ .Values.xxx }} |
| route.kind | string | `"HTTPRoute"` | Set the route kind. Valid options are GRPCRoute, HTTPRoute, TCPRoute, TLSRoute, UDPRoute |
| route.labels | object | `{}` | Route labels |
| route.matches | list | `[{"path":{"type":"PathPrefix","value":"/"}}]` | Request matching rules |
| route.name | string | `""` | Override the route name (defaults to fullname) |
| route.parentRefs | list | `[]` | Parent gateway references |
| route.securityPolicy | object | `{"annotations":{},"enabled":false,"labels":{}}` | Envoy Gateway SecurityPolicy configuration |
| route.securityPolicy.annotations | object | `{}` | Security policy annotations |
| route.securityPolicy.enabled | bool | `false` | Enable security policy |
| route.securityPolicy.labels | object | `{}` | Security policy labels |
| securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"runAsUser":1000,"seccompProfile":{"type":"RuntimeDefault"}}` | Container security context configuration |
| securityContext.allowPrivilegeEscalation | bool | `false` | Allow privilege escalation |
| securityContext.capabilities | object | `{"drop":["ALL"]}` | Capabilities configuration |
| securityContext.capabilities.drop | list | `["ALL"]` | Capabilities to drop |
| securityContext.readOnlyRootFilesystem | bool | `true` | Mount root filesystem as read-only |
| securityContext.runAsNonRoot | bool | `true` | Run container as non-root user |
| securityContext.runAsUser | int | `1000` | User ID to run the container |
| securityContext.seccompProfile | object | `{"type":"RuntimeDefault"}` | Seccomp profile configuration |
| securityContext.seccompProfile.type | string | `"RuntimeDefault"` | Seccomp profile type |
| service | object | `{"annotations":{},"labels":{},"port":80,"type":"ClusterIP"}` | This is for setting up a service more information can be found here: https://kubernetes.io/docs/concepts/services-networking/service/ |
| service.annotations | object | `{}` | Service annotations |
| service.labels | object | `{}` | Service labels |
| service.port | int | `80` | This sets the ports more information can be found here: https://kubernetes.io/docs/concepts/services-networking/service/#field-spec-ports |
| service.type | string | `"ClusterIP"` | This sets the service type more information can be found here: https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types |
| serviceAccount | object | `{"annotations":{},"automount":false,"create":true,"name":""}` | This section builds out the service account more information can be found here: https://kubernetes.io/docs/concepts/security/service-accounts/ |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.automount | bool | `false` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| serviceMonitor | object | `{"enabled":false}` | ServiceMonitor configuration for Prometheus |
| serviceMonitor.enabled | bool | `false` | Enable ServiceMonitor |
| strategy | object | `{"rollingUpdate":{"maxSurge":1,"maxUnavailable":1},"type":"RollingUpdate"}` | Deployment strategy configuration |
| strategy.rollingUpdate | object | `{"maxSurge":1,"maxUnavailable":1}` | Rolling update configuration |
| strategy.rollingUpdate.maxSurge | int | `1` | Maximum number of pods that can be created above the desired replica count |
| strategy.rollingUpdate.maxUnavailable | int | `1` | Maximum number of unavailable pods during update |
| strategy.type | string | `"RollingUpdate"` | Deployment strategy type |
| tolerations | list | `[]` | Tolerations for pod scheduling |
| topologySpreadConstraints | list | `[{"labelSelector":{"matchLabels":{"app.kubernetes.io/instance":"{{ .Release.Name }}","app.kubernetes.io/name":"{{ include \"hello-world.name\" . }}"}},"maxSkew":1,"topologyKey":"topology.kubernetes.io/zone","whenUnsatisfiable":"ScheduleAnyway"},{"labelSelector":{"matchLabels":{"app.kubernetes.io/instance":"{{ .Release.Name }}","app.kubernetes.io/name":"{{ include \"hello-world.name\" . }}"}},"maxSkew":1,"topologyKey":"kubernetes.io/hostname","whenUnsatisfiable":"ScheduleAnyway"}]` | Topology spread constraints for pod distribution |
| volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| volumes | list | `[]` | Additional volumes on the output Deployment definition. |
