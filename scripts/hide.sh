#!/bin/sh

touch ~/.local/share/applications/$1.desktop
rm ~/.local/share/applications/$1.desktop
echo "[Desktop Entry]" >> ~/.local/share/applications/$1.desktop
echo "Hidden=true" >> ~/.local/share/applications/$1.desktop
