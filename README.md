# docker-scripts

A collection of my personal docker shell scripts.

## Installation

- Download the zipball or clone the project
- Make sure that the scripts are one folder above your project root.

## Usage

Note: All scripts assume that there is a container called **web** in the project.

- ```container.sh CONTAINER_ID``` - returns the container ID by its name
- ```deploy.sh``` - builds and deploys containers through [docker-compose](https://github.com/docker/compose)
- ```exec.sh CONTAINER_NAME COMMAND``` - executes a command inside a container
- ```gc.sh``` - removes all stopped containers and dangling images
- ```ip.sh CONTAINER_NAME``` - retruns the IP address for a container
- ```rm.sh CONTAINER_NAME``` - removes a specific container
- ```rmi.sh IMAGE_NAME``` - removes a specific image
