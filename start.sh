#!/bin/sh

docker build -t dddc-credential-issuer .
docker run --rm -p 80:80 -e APP_MODULE="app.main:api" -e LOG_LEVEL="debug" -it dddc-credential-issuer
