#!/bin/bash

echo "Preparing app..."

docker network create notes-network

docker volume create mongo-data

docker build -t notes-web .

echo "Preparation complete."

