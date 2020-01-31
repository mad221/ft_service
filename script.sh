#!/bin/bash

minikube delete

export MINIKUBE_HOME="/sgoinfre/goinfre/Perso/mpouzol" && minikube config set vm-driver virtualbox

minikube start --cpus=4 --vm-driver=virtualbox

minikube ip > images/ftp/ip_file

#kubectl apply -f images/ingress-controller/ingress-controller.yaml
#kubectl apply -f images/nginx/test.yaml
#kubectl apply -f images/ftp/ftp.yaml
#kubectl apply -f images/wordpress/wordpress.yaml
#kubectl apply -f images/sql/sql.yaml
#kubectl apply -f images/Phpmyadmin/phpmyadmin.yam
kubectl apply -f images/influxdb/influxdb-secrets.yaml
kubectl apply -f images/influxdb/influxdb-config.yaml
kubectl apply -f images/influxdb/influxdb-deployment.yaml
