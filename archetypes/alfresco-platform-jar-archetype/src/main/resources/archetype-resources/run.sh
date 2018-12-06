#!/bin/bash

DOCKER_COMPOSE_FILE=docker-compose.yml

case "`uname -s`" in
    Linux*) DOCKER_COMPOSE_FILE=docker-compose-linux.yml;;
esac

docker-compose -f $DOCKER_COMPOSE_FILE up -d

MAVEN_OPTS="-Xms256m -Xmx2G" mvn clean install alfresco:run

docker-compose -f $DOCKER_COMPOSE_FILE stop