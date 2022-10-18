{{- define "k6.yaml" }}
apiVersion: k6.io/v1alpha1
kind: K6
metadata:
  name: k6-{{ .Release.Name }}
  namespace: {{ include "k6-loadtest.namespace" . }}
  labels:
    app: k6
spec:
  parallelism: {{ .Values.parallelism }}
  script:
    configMap: 
      name: {{ .Release.Name }}-js
      file: k6.js
  arguments: --out prometheus
  ports:
  - containerPort: 5656
    name: metrics
  runner:
    image: "{{ .Values.image.repository }}:{{ .Values.image.tag }}"
{{- end }}