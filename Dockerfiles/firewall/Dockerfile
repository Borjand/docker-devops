FROM alpine:latest

RUN apk add --no-cache iptables iproute2

COPY rules.sh /usr/local/bin/rules.sh
RUN chmod +x /usr/local/bin/rules.sh

CMD ["/usr/local/bin/rules.sh"]
