# II. 
# Enable the nginx ingress controller
minikube addons enable ingress
# Check that it's running
kubectl get pods -n ingress-nginx

# Create a deployment with nginx
kubectl create deployment nginx-deploy --image=nginx
# Create a service and expose the pods on port 80
kubectl expose deployment nginx-deploy --name=nginx-svc --type=ClusterIP --port=80
# Get the service url and open it in the browser
minikube service nginx-svc
