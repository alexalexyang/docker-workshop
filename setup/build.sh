#!/bin/bash

source .env
echo $PG_PW

docker container rm docker-workshop_db
docker container rm docker-workshop_web

docker image rm docker-workshop_db
docker image rm docker-workshop_web

docker compose up