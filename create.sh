#!/bin/bash
kubectl create secret generic postgres-sonar --from-literal=password=sonar
kubectl create -f sonar-pv-postgres.yaml
kubectl create -f sonar-pvc-postgres.yaml
kubectl create -f sonar-postgres-deployment.yaml
kubectl create -f sonarqube-deployment.yaml
kubectl create -f sonarqube-service.yaml
kubectl create -f sonar-postgres-service.yaml
