#!/bin/bash
# Script para configurar NAT en el contenedor
# Habilita forwarding y NAT para que lab-net acceda a internet vía host

# Instalar iptables
apt-get update && apt-get install -y iptables

# Habilitar el reenvío de paquetes en el kernel
echo 1 > /proc/sys/net/ipv4/ip_forward

# Detectar la interfaz externa dinámicamente
EXT_IFACE=$(ip route | grep default | awk '{print $5}' || echo "eth0")

# Configurar reglas de iptables para NAT
iptables -t nat -A POSTROUTING -o $EXT_IFACE -j MASQUERADE
iptables -A FORWARD -j ACCEPT

# Mantiene el contenedor en ejecución
tail -f /dev/null