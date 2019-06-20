#!/bin/bash

docker build \
    --build-arg SECRET_KEY_BASE="$SECRET_KEY_BASE" \
    --build-arg DD_API_KEY=$DD_API_KEY \
    -t 056154071827.dkr.ecr.us-east-1.amazonaws.com/$PROJECT_NAME:$ENVIRONMENT-$BUILD_NUMBER .
rc=$?

if [ $rc -ne 0 ]; then
  echo -e "Docker build failed"
  exit $rc
fi
