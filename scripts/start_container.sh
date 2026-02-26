#!/bin/bash
set -e

# Stop existing containers (ignore errors)
sudo docker stop $(sudo docker ps -q) || true
sudo docker rm $(sudo docker ps -aq) || true

# Pull latest image
sudo docker pull shiv20011207/simple-python-flask-app

# Run container
sudo docker run -d -p 5000:5000 shiv20011207/simple-python-flask-app
