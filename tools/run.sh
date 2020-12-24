#!/bin/bash

# Use tag from argument (v12_15_1 as default)
if [ $1 ] 
then 
    TAG=$1
else 
    TAG=v12_15_1
fi 

# Local botpress data directory
cd ..
DATA_DIR=$(pwd)/data

# Run Botpress Server docker image
docker run -d --rm -p 3000:3000 -h bluexolo-assistant --name bluexolo-assistant \
-v $DATA_DIR:/botpress/data botpress/server:$TAG
