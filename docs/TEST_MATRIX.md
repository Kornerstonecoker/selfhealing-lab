
Test Matrix – Minikube vs Cloud
Scenario	Minikube	EKS/GKE	Metrics
Pod crash	Yes	Yes	RTO, throughput, error rate
Resource exhaustion	Yes	Yes	Latency, restarts, error rate
Node unavailability	Skip	Yes	Reschedule time, RTO
Network delay/loss	Skip	Yes	Latency histograms, errors
Autoscaling interaction	Skip	Optional	Scale-up time, RTO, throughput

Notes:

Repeated runs in Minikube for stats.

Showcase realism with node/network tests in cloud.
