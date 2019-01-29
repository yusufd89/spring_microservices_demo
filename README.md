# Simple Spring (Netflix) cloud native microservice project

Simple microservices demo.

## architecture

![architecture](https://raw.githubusercontent.com/yusufd89/spring_microservices_demo/master/etc/architecture.png)

## requirements

  - Maven 3
  - Docker
  - Java 8

## run

Only run from command line:

> ./dockerRun.sh

## URL Endpoints
 
- Direct url to book-service http://localhost:8081/mybooks-public


- Url to service over zuul proxy http://localhost:9999/book-service-client/mybooks-public

  user credentials

    - username: user
    - password: pass
    

- Discovery Server http://localhost:8761/


- Zipkin http://localhost:9411
