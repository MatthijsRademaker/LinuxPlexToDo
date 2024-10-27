#!/bin/bash

echo "Stopping all services..."

cd ./monitoring
docker compose down

cd ../plex
docker compose down

cd ../qbit
docker compose down

cd ../servarr
docker compose down

cd ../books
docker compose down

echo "All services are down"

echo "Starting all plex related services..."

cd ../plex
docker compose up -d

cd ../monitoring   
docker compose up -d

echo "All plex related services are up and running!"
