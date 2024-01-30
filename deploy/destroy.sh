cd ..
cd scripts
kubectl delete -f metric.yaml
kubectl delete -f horizontal-pod-autoscaler-ping.yaml
kubectl delete -f horizontal-pod-autoscaler-nginx.yaml
kubectl delete -f cluster-autoscaler.yaml
kubectl delete -f horizontal-pod-autoscaler-status.yaml
kubectl delete -f ingress-status.yaml
kubectl delete -f service-status.yaml
kubectl delete -f ingress-ping.yaml
kubectl delete -f service-ping.yaml
kubectl delete -f deployment-ping.yaml
kubectl delete -f deployment-status.yaml
kubectl delete -f nginx.yaml
kubectl delete -f namespace-ping.yaml
kubectl delete -f namespace-status.yaml 
kubectl get all --all-namespaces
cd ..
cd infra
cd kubernetes
terraform destroy --auto-approve
"all done"