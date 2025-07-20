#!/bin/bash
echo "Configuring Kubernetes access..."
kubectl config use-context docker-desktop
echo "Installing Helm chart..."
helm install demo-app ./helm --namespace default
echo "Verifying deployment..."
kubectl get pods --namespace default