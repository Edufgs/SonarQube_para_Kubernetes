# SonarQube para Kubernetes

Site explicando: <https://coderise.io/installing-sonarqube-in-kubernetes/>

## CRIAR SEGREDO PARA O BANCO DE DADOS POSTGRES

Esta instalação do SonarQube funciona com Postgres. Mas você pode alterá-lo para outro banco de dados como o MySQL. Postgres é limitado apenas para este exemplo. Para proteger as senhas, criamos segredos no Kubernetes. Para postgres, o seguinte segredo é criado.

```shell
kubectl create secret generic postgres-sonar --from-literal=password=sonar
```

## EXECUTAR MANIFESTOS

### Para Criar

sh create.sh

### Para deletar

sh destroy.sh

```shell
kubectl create -f sonar-pv-postgres.yaml
kubectl create -f sonar-pvc-postgres.yaml
kubectl create -f sonar-postgres-deployment.yaml
kubectl create -f sonarqube-deployment.yaml
kubectl create -f sonarqube-service.yaml
kubectl create -f sonar-postgres-service.yaml
```

## Para criar um serviço para um pod e expor uma porta para que seja acessível pelo cluster

```shell
kubectl expose deployment nginx-deployment --type=NodePort --port=80
```

## Para permitir o acesso externo a um pod

80 é a porta original do container
9000 é a porta destino que vai ser acesso local

```shell
kubectl port-forward service/name_service 9000:80
```
