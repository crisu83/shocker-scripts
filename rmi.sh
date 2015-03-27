#!/bin/sh

if [ -z "$1" ]
  then
    echo "Usage: rmi.sh IMAGE_NAME"
    exit
fi

docker rmi $(docker images | grep $1 | awk '{print $1}')
