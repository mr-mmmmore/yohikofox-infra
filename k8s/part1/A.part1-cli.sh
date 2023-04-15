# Install minikube
# (...)

# I.1. Start a minikube cluster: "Minikube started a virtual machine for you, and a Kubernetes cluster is now running in that VM."
minikube start

# I.2.
# Create a nginx pod (setting the flag "--restart=Never" tells Kubernetes to create a single pod rather than a Deployment)
kubectl run nginx --image=nginx --restart=Never
# view the pod
kubectl get pods


# I.3.
# Create a deployment with nginx
kubectl create deployment nginx-deploy --image=nginx
# Check the deployment
kubectl describe deployment nginx-deploy

# I.4.
# Create a deployment of 2 nginx pods
kubectl create deployment nginx-deploy --image=nginx --replicas=2
# Create a clusterIP service and forward the 80 port of the pods to the 80 port of the service
kubectl create service clusterip nginx-svc  --tcp=80:80
# Have the service target the pods
kubectl set selector service nginx-svc app=nginx-deploy
# Get the service url and open it in the browser
minikube service nginx-svc