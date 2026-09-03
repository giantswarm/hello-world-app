{{/*
Expand the name of the chart.
*/}}
{{- define "hello-world.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "hello-world.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "hello-world.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "hello-world.labels" -}}
helm.sh/chart: {{ include "hello-world.chart" . }}
{{ include "hello-world.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
application.giantswarm.io/team: {{ index .Chart.Annotations "io.giantswarm.application.team" | quote }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "hello-world.selectorLabels" -}}
app.kubernetes.io/name: {{ include "hello-world.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "hello-world.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "hello-world.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Pod scheduling constraints: renders the `nodeSelector` and `tolerations` fields,
merging the `architecture` shorthand into the explicit values for both.

`architecture` exists because the two halves are coupled and fail in different,
non-obvious ways. Giant Swarm arm64 node pools carry a
`kubernetes.io/arch=arm64:NoSchedule` taint, so a pod needs the node selector
*and* the matching toleration: with only the selector it stays Pending, with
only the toleration it may be scheduled onto any pool. One value sets both.

`architecture` wins for the `kubernetes.io/arch` key, since it also decides the
toleration and the two must agree; any other `nodeSelector` entry is kept.
Emits nothing when unset, so rendered output is unchanged for existing users.
*/}}
{{- define "hello-world.podScheduling" -}}
{{- $nodeSelector := deepCopy (.Values.nodeSelector | default dict) -}}
{{- $tolerations := .Values.tolerations | default list -}}
{{- with .Values.architecture -}}
{{- $nodeSelector = merge (dict "kubernetes.io/arch" .) $nodeSelector -}}
{{- if eq . "arm64" -}}
{{- $tolerations = concat $tolerations (list (dict "key" "kubernetes.io/arch" "operator" "Equal" "value" "arm64" "effect" "NoSchedule")) -}}
{{- end -}}
{{- end -}}
{{- $scheduling := dict -}}
{{- if $nodeSelector -}}{{- $_ := set $scheduling "nodeSelector" $nodeSelector -}}{{- end -}}
{{- if $tolerations -}}{{- $_ := set $scheduling "tolerations" $tolerations -}}{{- end -}}
{{- with $scheduling }}{{ toYaml . }}{{ end -}}
{{- end }}
