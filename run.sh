#!/usr/bin/env bash

# Build the Docker image
docker build -t simple-website .

# Run the Docker container
docker run --rm -d -p 80:80 --name website simple-website 

