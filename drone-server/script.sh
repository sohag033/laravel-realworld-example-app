#!/bin/bash
cd /etc/drone
docker build -t lastdrone .
docker run -d --name="drone-CD" \
    -p 8080:8080 \
    -v /var/lib/drone/ \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /etc/drone/drone.sqlite:/var/lib/drone/drone.sqlite \
    lastdrone

