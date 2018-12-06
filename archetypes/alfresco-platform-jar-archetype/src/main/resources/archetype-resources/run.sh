#!/bin/bash

docker-compose up -d

MAVEN_OPTS="-Xms256m -Xmx2G" mvn clean install alfresco:run

docker-compose stop