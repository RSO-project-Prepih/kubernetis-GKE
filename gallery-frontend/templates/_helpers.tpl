
To create a Helm chart for your frontend microservice similar to the deployment of your gallery service, you can follow the same structure with necessary modifications to fit the frontend application's needs. Here's an example Helm chart for your frontend microservice:

yaml
Copy code
{{/* Expand the name of the chart. */}}
{{- define "frontend-service.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Selector labels */}}
{{- define "frontend-service.selectorLabels" -}}
app.kubernetes.io/name: {{ include "frontend-service.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/* Create a default fully qualified app name. */}}
{{- define "frontend-service.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "frontend-service.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Common labels */}}
{{- define "frontend-service.labels" -}}
app.kubernetes.io/name: {{ include "frontend-service.name" . }}
helm.sh/chart: {{ include "frontend-service.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.Version | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}