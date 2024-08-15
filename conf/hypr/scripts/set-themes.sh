#!/bin/bash

THEME='Dracula'
ICONS='Papirus'
FONT='JetBrains Mono'
CURSOR='Bibata-Modern-Ice'
COMMA='gsettings set org.gnome.desktop.interface'

apply_themes() {
	${COMMA} gtk-theme "$THEME"
	${COMMA} icon-theme "$ICONS"
	${COMMA} cursor-theme "$CURSOR"
	${COMMA} font-name "$FONT"
	hyprctl setcursor "$CURSOR" 24
}

apply_themes
