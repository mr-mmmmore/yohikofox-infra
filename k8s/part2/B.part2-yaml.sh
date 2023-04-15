# II. 
# Create an nginx deployment, service and ingress to serve it
kubectl apply -f part2.yaml
# Get the service url and open it in the browser
minikube service nginx-svc
