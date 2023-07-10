# I.2.
# Create an nginx pod
kubectl apply -f part1.2.yaml

# I.3.
# Create a deployment with nginx
kubectl apply -f part1.3.yaml
# Check the deployment
kubectl describe deployment nginx-deploy

# 4.
# Create a deployment of 2 nginx pods and a clusterIP service that target the pods
kubectl apply -f part1.4.yaml

# Get the service url and open it in the browser
minikube service nginx-svc
# OR forward one of the pods' port
kubectl port-forward service/nginx-svc 80:80