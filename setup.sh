#!/bin/bash

minikube delete

export MINIKUBE_HOME="/sgoinfre/goinfre/Perso/mpouzol"
minikube config set vm-driver virtualbox

minikube start --vm-driver=virtualbox --extra-config=apiserver.service-node-port-range=1-30000

minikube addons enable metrics-server

minikube ip > srcs/ftp/ip_file
minikube ip > srcs/sql/ip_file
minikube ip > srcs/telegraph/ip_file
eval $(minikube docker-env)

cd srcs/nginx
docker build -t nginx .
cd ../ftp
docker build -t ftp .
cd ../wordpress
docker build -t wordpress .
cd ../sql
docker build -t mysql .
cd ../Phpmyadmin
docker build -t phpmyadmin .
cd ../..

cd srcs/telegraph && ./setup.sh
cd ../..

kubectl apply -f srcs/ingress-controller/ingress-controller.yaml
kubectl apply -f srcs/nginx/nginx.yaml
kubectl apply -f srcs/ftp/ftp.yaml
kubectl apply -f srcs/wordpress/wordpress.yaml
kubectl apply -f srcs/sql/sql.yaml
kubectl apply -f srcs/Phpmyadmin/phpmyadmin.yaml
kubectl apply -f srcs/influxdb/influxdb-secrets.yaml
kubectl apply -f srcs/influxdb/influxdb-config.yaml
kubectl apply -f srcs/influxdb/influxdb-deployment.yaml
kubectl apply -f srcs/influxdb/influxdb-service.yaml
kubectl apply -f srcs/telegraph/telegraf-config.yaml
kubectl apply -f srcs/telegraph/telegraf-secrets.yaml
kubectl apply -f srcs/telegraph/telegraf-deployment.yaml
kubectl apply -f srcs/grafana/grafana/grafana-deployment.yaml
kubectl apply -f srcs/grafana/grafana/grafana-service.yaml


minikube mount $(pwd)/srcs/grafana/grafana/config:/grafana &
minikube dashboard
