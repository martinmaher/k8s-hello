# k8s-hello
Simple springboot-hello application for runnning in k8s cluster

Running locally:

```
mvn clean package
java -jar target/hello-0.0.1.jar
```

Creating docker image:

```
docker build -t martinmaher/hello:0.0.1 .
```

Running in container:

```
docker run -p 8080:8080 martinmaher/hello:0.0.1
```

