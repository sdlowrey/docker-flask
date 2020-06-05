# Docker Flask REST Playground

Experiments with Docker Flask microservices.

## Build

`docker build -t todo:0.1 .`

## Run

Dev mode:

`docker run -d -p 5000:5000 -e "ENV=DEV' todo:0.1`

Production:

`docker run -d -p 9090:9090 -e "ENV=prod" todo:0.1`

## Stop

`docker stop $(docker ps -q)`
