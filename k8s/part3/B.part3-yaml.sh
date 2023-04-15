# III.

# III.1 Install cert-manager
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.11.0/cert-manager.yaml

# III.2-4 Create a self-signed ClusterIssuer, certificate and an ingress rule that uses it
kubectl apply -f part3.yaml

# III.4 Access the domain via https
# Add domain to /etc/hosts (Mac: use 127.0.0.1)
sudo -- sh -c "echo '127.0.0.1\tpart3.local' >> /etc/hosts"
# Mac: run tunnel to make service available on 127.0.0.1
minikube tunnel
# Access the domain using https
curl "https://part3.local" --insecure --http1.1 # ==> Welcome to Nginx page

