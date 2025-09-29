#!/bin/sh
echo "Inicializando reglas de iptables..."

# Habilitar IP forwarding
echo 1 > /proc/sys/net/ipv4/ip_forward

# Permitir tráfico TCP al puerto definido (por defecto 80)
PORT=${ALLOWED_PORT:-80}

echo "Permitido tráfico TCP hacia puerto $PORT"
iptables -A FORWARD -p tcp --dport "$PORT" -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A FORWARD -p tcp --sport "$PORT" -m state --state ESTABLISHED,RELATED -j ACCEPT

# Opcional: permitir ICMP (ping) en ambas direcciones
iptables -A FORWARD -p icmp -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

# Denegar TODO lo demás (al final)
iptables -A FORWARD -j DROP

# Mantener contenedor vivo
tail -f /dev/null
