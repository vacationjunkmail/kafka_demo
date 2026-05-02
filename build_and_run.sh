#!/usr/bin/env bash
NETWORK="kafka-net"

if docker network ls --format '{{.Name}}' | grep -q "^${NETWORK}"; then
  echo "Docker network '${NETWORK}' already exists."
else
  echo "Docker network '${NETWORK}' does not exist. Creating..."
  docker network create kafka-net
  docker compose up -d
fi
