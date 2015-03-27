#!/bin/sh

if [ -z "$1" ]
  then
    echo "Usage: container.sh CONTAINER_NAME"
    exit
fi

docker ps -a | grep $1 | awk 'NR==1{print $1}'
