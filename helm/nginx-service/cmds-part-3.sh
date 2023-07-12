# III.3 Check the charts
helm lint .

# III.4 Package the charts
cd .. && helm package nginx-service

# III.5 Index the packages
helm repo index --url https://github.com/mr-mmmmore/yohikofox-infra/tree/main/helm .


