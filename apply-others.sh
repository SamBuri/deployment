tar -czf themes.tar.gz -C themes .
kubectl create configmap keycloak-themes --from-file=themes.tar.gz -n default
