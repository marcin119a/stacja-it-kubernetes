kubectl apply -f api-deployment.yml
kubectl apply -f worker-deployment.yml
kubectl apply -f redis-pod.yml
kubectl apply -f api-service.yml
kubectl apply -f redis-service.yml