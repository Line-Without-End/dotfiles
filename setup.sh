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

soft=("thunar" "syncthing" "polkit-gnome" "feh" "thunar-volman" "gvfs" "gvfs-smb" "smbclient" "tumbler" "wireguard-tools" "ark") 
echo "#####################"
echo "Setup additional soft"
echo "#####################"
pacman -Sy --noconfirm $soft

sleep 2

fonts=("ttf-jetbrains-mono" "ttf-dejavu" "ttf-liberation" "noto-fonts-emoji" "noto-fonts-cjk")
echo "#####################"
echo "Setup fonts"
echo "#####################"
pacman -Sy --noconfirm $fonts

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
echo "to ~/.themes/ and /usr/share/themes/"
echo "############"