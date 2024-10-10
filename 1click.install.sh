#!/bin/bash
echo "#####################################################";
echo "#  _     _                  ____            _     _ #";
echo "# | |   (_)_ __  _   ___  _|  _ \ _ __ ___ (_) __| |#";
echo "# | |   | | '_ \| | | \ \/ / | | | '__/ _ \| |/ _` |#";
echo "# | |___| | | | | |_| |>  <| |_| | | | (_) | | (_| |#";
echo "# |_____|_|_| |_|\__,_/_/\_\____/|_|  \___/|_|\__,_|#";
echo "#               One-Click Installer                 #";
echo "#                   by Vivek W                      #";
echo "#               Github.com/AryanVBW                 #";
echo "#####################################################";
echo "Updating and upgrading packages..."
pkg update -y && pkg upgrade -y

echo "Setting up storage permissions..."
termux-setup-storage

echo "Installing wget and figlet..."
pkg install wget -y && pkg install figlet -y

echo "Downloading LinuxDroid menu script..."
curl -O https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroidmenu.sh
chmod +x LinuxDroidmenu.sh

echo "Downloading default bashrc..."
curl -O https://github.com/AryanVBW/LinuxDroid/releases/download/A1/default.bashrc
chmod +x default.bashrc

echo "Replacing current .bashrc with default bashrc..."
rm -rf .bashrc && cp default.bashrc .bashrc

echo "Downloading and running LinuxDroid script..."
curl -O https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroid.sh
chmod +x LinuxDroid.sh
bash LinuxDroid.sh
