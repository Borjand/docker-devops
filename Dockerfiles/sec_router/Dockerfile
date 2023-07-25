# syntax=docker/dockerfile:1
FROM ubuntu:22.04

# install app dependencies
RUN apt-get update && apt-get install \
    -y nano iproute2 iputils-ping tcpdump traceroute apt-utils dialog openssl strongswan wget

# install app
#COPY hello.py /

# final configuration
#CMD flask run --host 0.0.0.0 --port 8000
