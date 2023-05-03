#!/bin/sh

docker compose exec -u root chrome apt-get update
docker compose exec -u root chrome apt-get -y install tcpdump
docker compose exec -u root chrome tcpdump -n -s0 dst port 53 or port 853
