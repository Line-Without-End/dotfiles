#!/bin/bash

# Укажите имя интерфейса WireGuard
WG_INTERFACE="wg0"

# Проверка наличия интерфейса WireGuard
if ip link show "$WG_INTERFACE" &> /dev/null; then
    sleep 5
    nmcli con down "Latvia VPN"
else
    nmcli con up "Latvia VPN"
fi
