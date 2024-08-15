#!/usr/bin/bash

echo "Setup Hyprland presets"
sleep 2

echo "#############"
echo "Update pacman"
echo "#############"
pacman -Syu --noconfirm

main=("alacritty" "wofi" "waybar" "hyprpaper")
echo "###################"  
echo "Setup main programs"
echo "###################"
pacman -Sy --noconfirm $main

sleep 2 

soft=("ttf-jetbrains-mono" "thunar" "syncthing" "polkit-gnome" "feh" "thunar-volman" "gvfs" "smbclient" "tumbler" "wireguard-tools" "ark") 
echo "#####################"
echo "Setup additional soft"
echo "#####################"
pacman -Sy --noconfirm $soft

sleep 2

echo "############"
echo "Copy configs"
echo "############"
cp -r conf/* ~/.config/

sleep 2

echo "############"
echo "Now open file manager"
echo "Unzip Bibata-Modern-Ice.tar.gz and Papirus.tar.gz"
echo "to ~/.local/share/icons/ and /usr/share/icons/"
echo "############"
echo "Unzip Dracula"
echo "to ~/.local/share/icons/ and /usr/share/themes/"
echo "############"