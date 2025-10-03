# RUNBOOK

## Setup (Local with Minikube)
```bash
minikube start --cpus=4 --memory=8192
kubectl create ns app
kubectl create ns monitoring
Monitoring
bash
Copy code
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install kps prometheus-community/kube-prometheus-stack -n monitoring
Access Grafana:

bash
Copy code
kubectl -n monitoring port-forward svc/kps-grafana 3000:80
Open http://localhost:3000 (default creds: admin/prom-operator).

Sample App
Deploy from /k8s/app-deployment.yaml and /k8s/app-service.yaml.

Fault Injection
Pod crash: kubectl delete pod <pod>

Resource stress: run stress-ng inside pod

Node unavailability: kubectl cordon/drain <node>

Recovery Time
Record START: date -u +"%Y-%m-%dT%H:%M:%SZ"

Detect recovery: pod Ready again (lastTransitionTime), throughput back to baseline.
