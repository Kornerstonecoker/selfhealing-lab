# Kubernetes Native Self-Healing – Research Project

This repository contains experiments to evaluate Kubernetes’ **native self-healing mechanisms** 
under common failure scenarios, with minimal external tooling, and a reproducible methodology.

## Structure
- **/k8s** → Kubernetes manifests (app, services, RBAC, helpers)
- **/helm** → Helm values/config (monitoring stack, Prometheus, Grafana)
- **/scripts** → Bash helpers (load testing, fault injection, recovery measurement)
- **/experiments** → Trial logs, CSV outputs, baseline measurements
- **/docs** → Runbook, test matrix, decisions

## Quick Start
1. Start Minikube cluster
2. Deploy monitoring (Prometheus, Grafana)
3. Deploy test app with probes & resource limits
4. Run load tests (wrk/ab) and inject faults
