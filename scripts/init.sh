#!/usr/bin/env bash

if [[ "$#" -eq "0" ]]; then
  echo Please provide an app name
  exit 1
fi

docker-compose run --rm base lein new app $1

echo "PROJECT_DIR=$1" > .env
