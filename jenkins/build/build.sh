#!/bin/bash

# Copy the jar from build location
cp -f java-app/target/*.jar jenkins/build/

echo "Building docker image"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
