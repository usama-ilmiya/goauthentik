#!/bin/bash
apt-get update
apt-get install -y docker.io
docker build -t authentik .
docker run -d -p 80:80 authentik
