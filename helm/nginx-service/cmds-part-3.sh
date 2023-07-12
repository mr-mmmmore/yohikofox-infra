# III.3 Check the charts
helm lint .

# III.4 Package the charts
cd .. && helm package nginx-service

# III.5 Index the packages
helm repo index --url https://github.com/mr-mmmmore/yohikofox-infra/tree/main/helm .


# Check the published repo

# Add the repo
helm repo add helm-exercise https://mr-mmmmore.github.io/yohikofox-infra/helm

# Search the charts
helm search repo nginx-service
# NAME                       	CHART VERSION	APP VERSION	DESCRIPTION                
# helm-exercise/nginx-service	0.1.0        	1.16.0     	A Helm chart for Kubernetes
