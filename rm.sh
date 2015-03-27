#!/bin/bash

if [ -z "$1" ]
  then
    echo "Usage: rm.sh CONTAINER_NAME"
    exit
fi

SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
cd $SCRIPT_PATH/.. && compose stop $* && compose rm $*
