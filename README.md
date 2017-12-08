Flask, Golang, gRPC, MongoDB example Project
---

This repo demonstrates a dockerized Flask, Golang, gRPC, MongoDB  microservice. 
It could serve as a template for a project based on gRPC or for quick experiments.

## Quickstart
TODO

## User Directory Service
An example User directory service is implemented as a GRPC service, split into:

* src/proto/userDirectory.proto: grpc service description with protobuf
* src/server/main.go: go implementation of the user directory server. It will connect itself to a mongoDb server.
* client/app.py: Flask application implementation of the echo client. It will listen to http requests 
and forward them to the server backend

## Docker Containers
For quick and easy setup of the project, I've included a DockerCompose.yml file that orchestrates the 
services. Just run in the base directory:

```bash
docker-compose up
```

## LICENCE
MIT Theo Despoudis 2017
