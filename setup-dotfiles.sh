#!/usr/bin/bash

pacman -Sy git alacritty remmina thunar meson thunar-volman gvfs tumbler waybar wofi firefox

git clone "https://github.com/Lucad44/tschuss.git"
cd tschuss
meson setup build
meson compile -C build
sudo meson install -C build

cp -rp conf/* ~/.config/
cp -rp themes/* /usr/share/themes/