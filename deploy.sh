#!/bin/sh

WORKDIR=$(pwd)
SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
cd $SCRIPT_PATH/..
echo Building application...
grunt dist >> deploy.log 2>&1
echo Packing containers...
compose build >> deploy.log 2>&1
 echo Shipping containers...
compose up -d >> deploy.log 2>&1
cd $WORKDIR
