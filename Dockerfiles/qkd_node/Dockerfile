# syntax=docker/dockerfile:1
FROM ubuntu:22.04

# Actualiza el sistema e instala sudo
RUN apt-get update && \
    apt-get install -y sudo && \
    rm -rf /var/lib/apt/lists/*

# Crea un usuario llamado "student"
RUN useradd -m -s /bin/bash student

# Permite que el usuario "student" ejecute comandos con sudo sin contraseña
RUN echo "student ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/student && \
    chmod 0440 /etc/sudoers.d/student

# Establece al usuario "student" como el usuario por defecto
USER student

# Establece el directorio de trabajo en el directorio home del usuario "student"
WORKDIR /home/student

# Instala paquetes necesarios para Python y NetworkX
RUN sudo apt-get update && \
    sudo apt-get install -y python3 python3-pip && \
    pip3 install --user "simulaqron==3.0.16"

# Añade .local/bin/ al PATH
ENV PATH="/home/student/.local/bin:${PATH}"

# Ejecuta el shell al iniciar el contenedor
CMD ["/bin/bash"]
