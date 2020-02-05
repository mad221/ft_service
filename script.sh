#!/bin/bash

minikube delete

export MINIKUBE_HOME="/sgoinfre/goinfre/Perso/mpouzol"
minikube config set vm-driver virtualbox

minikube start --cpus=4 --vm-driver=virtualbox --extra-config=apiserver.service-node-port-range=1-30000
minikube ip > images/ftp/ip_file
minikube ip > images/sql/ip_file

eval $(minikube docker-env)

cd images/nginx
docker build -t nginx .
cd ../ftp
docker build -t ftp .
cd ../wordpress
docker build -t wordpress .
cd ../sql
docker build -t sql .
cd ../Phpmyadmin
docker build -t phpmyadmin .
cd ../..

kubectl apply -f images/ingress-controller/ingress-controller.yaml
kubectl apply -f images/nginx/test.yaml
kubectl apply -f images/ftp/ftp.yaml
kubectl apply -f images/wordpress/wordpress.yaml
kubectl apply -f images/sql/sql.yaml
kubectl apply -f images/Phpmyadmin/phpmyadmin.yam
#kubectl apply -f images/influxdb/influxdb-secrets.yaml
#kubectl apply -f images/influxdb/influxdb-config.yaml
#kubectl apply -f images/influxdb/influxdb-deployment.yaml
#kubectl apply -f images/influxdb/influxdb-service.yaml
#kubectl apply -f images/telegraph/telegraf-config.yaml
#kubectl apply -f images/telegraph/telegraf-secrets.yaml
#kubectl apply -f images/telegraph/telegraf-deployment.yaml
#kubectl apply -f images/grafana/grafana/grafana-deployment.yaml
#kubectl apply -f images/grafana/grafana/grafana-service.yaml

 minikube dashboard
