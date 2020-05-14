aws eks --region <REGION_NAME> update-kubeconfig --name <CLUSTER_NAME>
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl get pods
kubectl autoscale deployment <DEPLOYMENT_NAME> --cpu-percent=<DESIRED_THRESHOLD> --min=<MIN_PODS> --max=<MAX_PODS>
kubectl get hpa
