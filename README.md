# k8s-hello
Simple springboot-hello application for runnning in k8s cluster

## Building and running locally

Build and test application:
```
mvn clean package
java -jar target/hello-0.0.1.jar
```

Create docker image:
```
docker build -t hello:v1 .
```

Test docker image:
```
docker run -p 8080:8080 hello:v1
```

## Uploading image to docker hub (optional)

Login to docker hub:
```
docker login
```

Tag image and push to docker hub:
```
docker tag hello:v1 martinmaher/hello:v1
docker push martinmaher/hello:v1
```

## Deploying on cluster

Create a new namespace in kubernetes and switch to this namespace:
```
kubectl create -f hello-namespace.yml
kubectl config set-context $(kubectl config current-context) --namespace=hello
```

Deploy in cluster:
```
kubectl create -f hello-deployment.yml
kubectl get all --namespace=hello
```

Create a service:
```
kubectl create -f hello-service.yml
kubectl get service/hello -o jsonpath="{.spec.ports[*].nodePort}"
```

## Rolling out a new version on cluster

TODO 

## Cleanup cluster

Remove everything:
```
kubectl delete deployment hello
kubectl delete service hello
kubectl delete namespace hello
```
