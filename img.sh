#!/bin/bash

kubectl apply -f images/ingress-controller/ingress-controller.yaml
kubectl apply -f images/nginx/test.yaml
kubectl apply -f images/ftp/ftp.yaml
