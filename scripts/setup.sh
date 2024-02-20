#!/bin/sh

if [ "$(whoami)" != "root" ]; then
	echo "Please run this script as root."
	exit
fi

printf "Making sure essential packages are installed..."
pacman -S --needed --noconfirm git wget man-db unzip

printf "Installing desktop environment..."
pacman -S --needed --noconfirm wayland sddm dunst wl-clipboard waybar gnome-keyring hyprland hyprpaper
printf "Download sddm theme from https://store.kde.org/p/1312658 and put it into /usr/share/sddm/themes/"

printf "Installing audio setup..."
pacman -S --needed --needed alsa-utils pulseaudio pulseaudio-alsa

printf "Installing bluetooth..."
pacman -S --needed --noconfirm bluez bluez-utils blueman pulseaudio-bluetooth
systemctl enable bluetooth
systemctl start bluetooth

printf "Install fonts..."
# TODO

printf "Install base packages..."
sudo pacman -S --needed --noconfirm clang python nodejs npm make cmake ripgrep neovim neofetch
sudo pacman -S --needed --noconfirm stow

sudo pacman -S --needed --noconfirm nautilus loupe evince vlc gimp
