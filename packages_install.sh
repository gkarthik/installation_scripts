#!/bin/bash

# Install vim/vi/nano during install of ArchLinux

# Sudo
pacman -S sudo
# Nvidia
pacman -S nvidia nvidia-settings cuda
# Intel
pacman -S xf86-video-intel mesa
# X
pacman -S xorg-xrandr xorg-xinit 
# Window manager
pacman -S i3
# Wifi
pacman -S dialog wpa_supplicant wifi-menu
# Applications
pacman -S terminator firefox alsa-utils docker openconnect ranger flameshot borg libreoffice-still
# Languages and utils
pacman -S base-devel python python-pip r git emacs rsync openssh keepassxc tk jdk-openjdk gdb valgrind tmux
pip install --user numpy scipy sklearn pandas matplotlib requests biopython
# Yay for AUR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
# Keybase
yay -S keybase-bin
run_keybase
# Install fonts
yay -S ttf-iosevka
# Eclipse
pacman -S eclipse-java
