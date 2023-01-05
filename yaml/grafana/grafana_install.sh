kubectl create -f grafna_namespace.yaml

kubectl config set-context monitoring-admin@kubernetes --cluster=kubernetes --user=kubernetes-admin --namespace=monitoring
kubectl config use-context monitoring-admin@kubernetes

kubectl create -f pvc_influxdb.yaml -n monitoring

kubectl create -f grafana_secret.yaml -n monitoring
kubectl create -f deployment_influxdb.yaml -n monitoring
kubectl create -f service_influxdb.yaml -n monitoring

kubectl create -f secret_telgra.yaml -n monitoring
kubectl create -f telgraf_config.yaml -n monitoring
kubectl create -f telgraf_deployment.yaml -n monitoring
kubectl create -f telegraf_service.yaml -n monitoring

kubectl create -f grafana_secret.yaml -n monitoring
kubectl create -f grafana_deployment.yaml -n monitoring
kubectl create -f grafana_service.yaml -n monitoring

kubectl get svc -n monitoring
kubectl get pods -n monitoring




