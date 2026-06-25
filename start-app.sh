#!/bin/bash

echo "Starting application..."

docker start mongo 2>/dev/null || docker run -d \
--name mongo \
--network notes-network \
--restart unless-stopped \
-v mongo-data:/data/db \
mongo

docker start web 2>/dev/null || docker run -d \
--name web \
--network notes-network \
--restart unless-stopped \
-p 5000:5000 \
notes-web

echo "The app is available at:"
echo "http://localhost:5000"
