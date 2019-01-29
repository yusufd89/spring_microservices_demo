#!/bin/bash
docker kill $(docker ps -a -q)
docker rm $(docker ps -a -q)

cd config-server
mvn package docker:build -DskipTests

cd ..
cd discovery-server
mvn  package docker:build -DskipTests

cd ..
cd book-service
mvn  package docker:build -DskipTests

cd ..
cd book-service-client
mvn  package docker:build -DskipTests

cd ..
cd zipkin
mvn  package docker:build -DskipTests

cd ..
cd hystrix-dashboard
mvn  package docker:build -DskipTests

cd ..
cd zuul-proxy
mvn  package docker:build -DskipTests

cd ..
docker-compose up

