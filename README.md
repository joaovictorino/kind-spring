# Sample Spring application hosting with Kind Kubernetes (local)

Requirements

- kind installed

Create cluster

```sh
kind create cluster
```

Deploy web application

```sh
kubectl apply -f k8s/1-config
kubectl apply -f k8s/2-db
kubectl apply -f k8s/3-app
```

Get HTTP application ports

```sh
kubectl get svc -n aulainfra
```

Get application IP

```sh
kubectl get nodes -o wide
```

And then access the application in browser!
