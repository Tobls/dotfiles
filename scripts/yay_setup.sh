#!/bin/sh

if [ "$(whoami)" == "root" ]; then
	echo "Please don't run this script as root."
	exit
fi

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

yay -S tofi jetbrains-toolbox aylurs-gtk-shell
