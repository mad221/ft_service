#!/bin/bash

minikube delete

export MINIKUBE_HOME=/sgoinfre/goinfre/Perso/mpouzol

minikube start --cpus=4 --vm-driver virtualbox

kubectl apply -f images/nginx/test.yaml
