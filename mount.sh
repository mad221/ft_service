export MINIKUBE_HOME="/sgoinfre/goinfre/Perso/mpouzol" && minikube config set vm-driver virtualbox
eval $(minikube docker-env)
minikube mount $(pwd)/images/grafana/grafana/config:/grafana
