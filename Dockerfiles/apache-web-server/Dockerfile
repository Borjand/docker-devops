# Dockerfile para web-server KNF
FROM alpine:latest

# Instalar Apache
RUN apk update && apk add --no-cache apache2

# Crear carpeta para videos y copiar contenido
COPY videos/ /var/www/localhost/htdocs/

# Redirigir los logs a stdout/stderr para verlos con `docker logs`
RUN ln -sf /dev/stdout /var/log/apache2/access.log && \
    ln -sf /dev/stderr /var/log/apache2/error.log

# Exponer el puerto 80
EXPOSE 80

# Comando para arrancar apache en primer plano
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
