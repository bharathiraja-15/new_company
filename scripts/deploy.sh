#!/bin/bash

echo "Deploying..."

docker stop mysite || true
docker rm mysite || true

docker build -t mysite -f docker/Dockerfile .
docker run -d -p 80:80 --name mysite mysite

echo "Done íº€"
