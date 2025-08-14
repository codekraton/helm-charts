# Helm Chart Structure

A Helm chart is a collection of files that describe a related set of Kubernetes resources. It enables easy packaging, configuration, and deployment of applications on Kubernetes.

## Useful commands
```bash
# Create a new Helm chart
helm create codekraton-kubernetes-dashboard

# Package a chart into a .tgz file, also upgrades the chart version
helm package codekraton-kubernetes-dashboard

# Update the index file for the chart repository
helm repo index . --url https://codekraton.github.io/helm-charts/
```

## Directory Structure

```
mychart/
    Chart.yaml            # Information about the chart
    values.yaml           # Default configuration values for the chart
    charts/               # Directory for dependent charts
    templates/            # Kubernetes manifest templates
        deployment.yaml   # Deployment resource template
        service.yaml      # Service resource template
        ingress.yaml      # Ingress resource template (optional)
        configmap.yaml    # ConfigMap resource template (optional)
``` 

### Chart.yaml

- **Purpose:** Contains metadata about the chart.
- **Structure:**  

```
apiVersion: v2
name: my-helm-chart
type: application
version: 0.1.0
description: A Helm chart for Kubernetes
appVersion: "1.0"

# apiVersion: Chart API version (v2 for Helm 3).
# name: Name of the chart.
# type: Type of the chart (application, library, etc.).
# version: Chart version.
# description: Brief description.
# appVersion: Version of the application being deployed.
```

### values.yaml
- **Purpose:** Contains default configuration values for the chart.
- **Structure:**
```
replicaCount: 1
image:
  repository: my-repo/my-image
  tag: latest
  pullPolicy: IfNotPresent
service:
    type: ClusterIP
    port: 80
ingress:
    enabled: false
    annotations: {}
    hosts:
        - host: chart-example.local
          paths:
              - /
    tls: []
    
# Default values for the chart.
# replicaCount: Number of replicas for the deployment.
# image: Image repository, tag, and pull policy.
# service: Service type and port configuration.
# ingress: Ingress configuration (optional).
```