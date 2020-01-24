#!/bin/bash

minikube delete

export MINIKUBE_HOME=/sgoinfre/goinfre/Perso/mpouzol

minikube start --cpus=4 --vm-driver virtualbox

minikube ip > images/ftp/ip_file

kubectl apply -f images/ingress-controller/ingress-controller.yaml
kubectl apply -f images/nginx/test.yaml
kubectl apply -f images/ftp/ftp.yaml
