#!/bin/bash

if [ -z "$1" ]
  then
    echo "Usage: exec.sh CONTAINER_NAME COMMAND"
    exit
fi

SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
CONTAINER_ID="`$SCRIPT_PATH/container.sh $1`"
docker exec -ti $CONTAINER_ID ${@:2}
