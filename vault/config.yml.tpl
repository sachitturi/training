---
{{- with secret "postgresql/creds/readonly" }}
username: "{{ .Data.username }}"
password: "{{ .Data.password }}"
database: "myapp"
{{- end }}
