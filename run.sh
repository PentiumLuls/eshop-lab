#!/bin/bash
cd "${0%/*}"

echo "======================================"
echo "Script execution format: "
echo "bash build.sh <ENVIRONMENT>"
echo "<ENVIRONMENT> could be staging or production"
echo "======================================"
BUILD_ENVIRONMENT=$1
if [ -z "$BUILD_ENVIRONMENT" ]; then
  echo "ERROR: Please specify ENVIRONMENT variable: staging or production"
  exit
fi

DOCKER_COMPOSE_BUILD="-f docker-compose.${BUILD_ENVIRONMENT}.yml up -d"
sudo docker-compose $DOCKER_COMPOSE_BUILD
