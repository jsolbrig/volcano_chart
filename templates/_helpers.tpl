{{/* vim: set filetype=mustache: */}}
{{/* Expand the name of the chart. */}}
{{- define "volcano.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "volcano.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/* Create chart name and version as used by the chart label. */}}
{{- define "volcano.chartref" -}}
{{- replace "+" "_" .Chart.Version | printf "%s-%s" .Chart.Name -}}
{{- end }}

{{/* Generate basic labels */}}
{{- define "volcano.labels" }}
app.kubernetes.io/name: {{ template "volcano.name" .}}
helm.sh/chart: {{ template "volcano.chartref" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: "{{ .Chart.AppVersion }}"
app.kubernetes.io/part-of: {{ template "volcano.name" . }}
release: {{ $.Release.Name | quote }}
heritage: {{ $.Release.Service | quote }}
{{- if .Values.commonLabels }}
{{ toYaml .Values.commonLabels }}
{{- end }}
{{- end }}

{{/* Generate image */}}
{{- define "volcano.image" }}

{{- $image := "" }}

{{- if .registry }}
{{- $image = printf "%s/%s" .registry .repository }}
{{- else }}
{{- $image = .repository }}
{{- end }}

{{- printf "%s" $image }}
{{- end }}

{{/* Generate image tags */}}
{{- define "volcano.imageTag" }}
{{- $imageTag := "" }}

{{- if .digest }}
{{- $imageTag = printf "%s@%s" $imageTag .digest }}
{{- else if .tag }}
{{- $imageTag = printf "%s:%s" $imageTag .tag }}
{{- end }}

{{- printf "%s" $imageTag }}
{{- end }}
