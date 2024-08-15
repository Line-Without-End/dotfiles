#!/usr/bin/bash

# Укажите имя подключения WireGuard
WG_NAME="VPN"
# Укажите имя интерфейса WireGuard
WG_INTERFACE="wg0"

# Проверка наличия интерфейса WireGuard
if ip link show "$WG_INTERFACE" &> /dev/null; then
    sleep 5
    nmcli con down "$WG_NAME"
else
    nmcli con up "$WG_NAME"
