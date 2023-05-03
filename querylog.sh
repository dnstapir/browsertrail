#!/bin/sh

docker compose exec -u root chrome apt-get update
docker compose exec -u root chrome apt-get -y install iproute2 tcpdump
docker compose exec -u root chrome tcpdump -n -s0 dst port 53
