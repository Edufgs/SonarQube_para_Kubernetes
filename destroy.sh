#!/bin/bash
kubectl delete -f sonar-pv-postgres.yaml
kubectl delete -f sonar-pvc-postgres.yaml
kubectl delete -f sonar-postgres-deployment.yaml
kubectl delete -f sonarqube-deployment.yaml
kubectl delete -f sonarqube-service.yaml
kubectl delete -f sonar-postgres-service.yaml
