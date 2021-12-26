#!/bin/bash

echo "now upgrading your system..."
sudo dnf upgrade
echo "installing the RPM-Fusion-Packages"
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
echo "installing Flathub-Remote"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#echo "installing featherpad"
#sudo dnf install featherpad 
echo "installing neofetch"
sudo dnf install neofetch
echo "installing htop"
sudo dnf install htop
echo "Installing mpv"
sudo dnf install mpv
#echo "Installing LibreWolf"
#flatpak install io.gitlab.librewolf-community
echo "Installing common development-tools"
sudo dnf install @development-tools


