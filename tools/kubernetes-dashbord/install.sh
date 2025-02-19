#!/bin/bash

kubectl apply -f ./kubernetes-dashboard.yml
kubectl apply -f ./kubernetes-dashboard-service.yml
kubectl apply -f ./grant-all-namespaces.yml
kubectl apply -f dashboard-token-secret.yaml
kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep dashboard-admin-sa | awk '{print $1}')


#kubectl -n kubernetes-dashboard create token kubernetes-dashboard
#kubectl get pods -n kubernetes-dashboard
#kubectl get svc -n kubernetes-dashboard


#HTTP_PROXY=http://127.0.0.1:10809
#HTTPS_PROXY=http://127.0.0.1:10809