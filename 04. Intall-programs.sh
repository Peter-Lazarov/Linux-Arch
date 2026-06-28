#!/bin/bash
sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm \
  firefox nodejs npm vlc ffmpeg gst-libav gst-plugins-bad gst-plugins-ugly \
  guvcview libreoffice-fresh jdk21-openjdk maven docker docker-compose git

sudo systemctl enable --now docker
sudo usermod -aG docker $USER

sudo pacman -S --needed --noconfirm base-devel

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..

yay -S --noconfirm google-chrome brave-bin dbeaver mongodb-compass-bin

git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg -si --noconfirm


