FROM alpine:latest

RUN apk update && apk add --no-cache haproxy

EXPOSE 80

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg", "-db"]
