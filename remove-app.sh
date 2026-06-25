#!/bin/bash

docker rm -f web mongo

docker network rm notes-network

docker volume rm mongo-data

docker rmi notes-web

echo "Removed app."

