#!/bin/bash

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl apply -n argocd -f ./argocd-server.yaml


#kubectl edit svc argocd-server -n argocd
#kubectl port-forward svc/argocd-server -n argocd 8080:443
