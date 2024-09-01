# Hello World Microservices 272

This project consists of two microservices, **hello** and **world**.\
\
**Hello** is a server running on Javascript with the express framework.\
**World** is a server running on Python with the flask framework.

## Docker

Need **Docker** to be installed

#### Method 1.Pull from Dockerhub

Hello: https://hub.docker.com/repository/docker/ryantandocker/world_272\
World: https://hub.docker.com/repository/docker/ryantandocker/hello_272

    docker image pull ryantandocker/hello_272:latest
    docker image pull ryantandocker/world_272:latest

#### Method 2.Build from Dockerfiles

    docker build -t world_272 ./world
    docker build -t hello_272 ./hello

#### Execute

    docker run -p 4445:4445 hello_272
    docker run -p 5000:5000 world_272

## Kubernetes Method

Done using Minikube to make a cluster

    minikube start

Apply the deployment and service of each microservice

Hello

    kubectl apply -f ./hello/hello_deploy.yaml
    kubectl apply -f ./hello/hello_service.yaml

World

    kubectl apply -f ./world/world_deploy.yaml
    kubectl apply -f ./world/world_service.yaml

## To run services individually

### Hello Service

##### Prereq: Node.js Runtime

In the root repository directory

    node ./hello/index.js

    curl http://localhost:4445

### World Service

##### Prereq: Python3 and Flask

    python ./world/index.js

    curl http://localhost:5000
