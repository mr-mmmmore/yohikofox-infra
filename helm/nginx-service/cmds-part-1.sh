# I.2 Create a Helm chart
helm create nginx-service 

# I.3 Install the chart
helm install nginx-service-chart . 

# Run the commands listed as output to configure the port-forwarding
# and go to http://127.0.0.1:8080
export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=nginx-service,app.kubernetes.io/instance=nginx-service-chart" -o jsonpath="{.items[0].metadata.name}")
export CONTAINER_PORT=$(kubectl get pod --namespace default $POD_NAME -o jsonpath="{.spec.containers[0].ports[0].containerPort}")
echo "Visit http://127.0.0.1:8080 to use your application"
kubectl --namespace default port-forward $POD_NAME 8080:$CONTAINER_PORT