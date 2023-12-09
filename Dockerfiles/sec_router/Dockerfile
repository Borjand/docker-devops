# syntax=docker/dockerfile:1
FROM ubuntu:22.04

# install app dependencies
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install \
    -y sudo nano iproute2 iputils-ping traceroute wireshark strongswan

