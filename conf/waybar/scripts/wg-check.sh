#!/usr/bin/bash

# Укажите имя интерфейса WireGuard
WG_INTERFACE="wg0"

# Проверка наличия интерфейса WireGuard
if ip link show "$WG_INTERFACE" &> /dev/null; then
    echo "UP"
else
    echo "DN"
fi
