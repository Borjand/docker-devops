# syntax=docker/dockerfile:1
FROM ubuntu:22.04

# Instala las dependencias de la aplicación
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    nano sudo iproute2 iputils-ping tcpdump traceroute wget wireshark apache2

# Detén apache2 al iniciar el contenedor
CMD service apache2 stop && bash
