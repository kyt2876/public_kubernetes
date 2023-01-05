kubectl delete -f grafana_service.yaml -n monitoring
kubectl delete -f grafana_deployment.yaml -n monitoring
kubectl delete -f grafana_secret.yaml -n monitoring

kubectl delete -f telegraf_service.yaml -n monitoring
kubectl delete -f telgraf_deployment.yaml -n monitoring
kubectl delete -f telgraf_config.yaml -n monitoring
kubectl delete -f secret_telgra.yaml -n monitoring

kubectl delete -f service_influxdb.yaml -n monitoring
kubectl delete -f deployment_influxdb.yaml -n monitoring
kubectl delete -f grafana_secret.yaml -n monitoring

kubectl delete -f grafna_namespace.yaml

kubectl config delete-context monitoring-admin@kubernetes
kubectl config use-context monitoring-admin@kubernetes


kubectl get svc -n monitoring
kubectl get pods -n monitoring





