# syntax=docker/dockerfile:1
FROM ubuntu:22.04

# Instala las dependencias de la aplicación
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    nano sudo iproute2 iputils-ping ethtool openjdk-11-jdk vlc

# Crea el usuario 'phantomuser' y agrégalo al grupo sudo
RUN adduser --disabled-password --gecos "" --ingroup sudo phantomuser

# Permite que el usuario 'phantomuser' use sudo sin contraseña
RUN echo "phantomuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/phantomuser

# Cambia al usuario 'student' como predeterminado (opcional)
USER phantomuser
WORKDIR /home/phantomuser

# Comando para evitar que sea un contenedor efímero
CMD ["tail", "-f", "/dev/null"]
