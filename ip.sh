#!/bin/sh

if [ -z "$1" ]
  then
    echo "Usage: ip.sh CONTAINER_NAME"
    exit
fi

SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
$SCRIPT_PATH/exec.sh web cat /etc/hosts | grep $1 | awk 'NR==1{print $1}'
