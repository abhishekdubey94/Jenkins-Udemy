#!/bin/bash

echo "*************************"
echo "***** Pushing Image******"
echo "*************************"

IMAGE="maven-project"

echo "Login in"
docker login -u abhishekdubey94 -p $PASS
echo "tagging image"
docker tag $IMAGE:$BUILD_TAG abhishekdubey94/$IMAGE:$BUILD_TAG
echo "Pushin Image"
docker push abhishekdubey94/$IMAGE:$BUILD_TAG
