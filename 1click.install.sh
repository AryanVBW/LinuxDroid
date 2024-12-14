#!/bin/bash

# Display Banner
echo "#####################################################"
echo "#  _     _                  ____            _     _  #"
echo "# | |   (_)_ __  _   ___  _|  _ \ _ __ ___ (_) __| |#"
echo "# | |   | | '_ \| | | \ \/ / | | | '__/ _ \| |/ _` |#"
echo "# | |___| | | | | |_| |>  <| |_| | | | (_) | | (_| |#"
echo "# |_____|_|_| |_|\__,_/_/\_\____/|_|  \___/|_|\__,_|#"
echo "#               One-Click Installer                  #"
echo "#                   by Vivek W                      #"
echo "#               Github.com/AryanVBW                 #"
echo "#####################################################"

# Detect Android Version (without root)
android_version=$(getprop ro.build.version.release)
echo "Detected Android version: $android_version"

# Check and Update Packages
echo "Checking for package updates..."
if ! pkg list-updates &> /dev/null; then
  echo "No package updates available."
else
  echo "Updating and upgrading packages..."
  pkg update -y && pkg upgrade -y
fi

# Request Storage Permission
echo "Requesting storage permission for Termux..."
termux-setup-storage

# Install Dependencies
echo "Installing required packages..."
pkg install wget figlet curl -y

# Download and Prepare Scripts
echo "Downloading LinuxDroid menu script..."
curl -O https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroidmenu.sh
if [[ ! -f LinuxDroidmenu.sh ]]; then
  echo "Error: Failed to download LinuxDroid menu script."
  exit 1
fi
chmod +x LinuxDroidmenu.sh

echo "Downloading default bashrc..."
curl -O https://github.com/AryanVBW/LinuxDroid/releases/download/A1/default.bashrc
if [[ ! -f default.bashrc ]]; then
    echo "Error: Failed to download default bashrc."
    exit 1
fi
chmod +x default.bashrc

# Backup existing .bashrc (optional)
echo "Backing up existing .bashrc (if it exists)..."
if [[ -f ~/.bashrc ]]; then
    mv ~/.bashrc ~/.bashrc.bak
    echo "Existing .bashrc backed up to ~/.bashrc.bak"
else
    echo "No existing .bashrc found."
fi


echo "Copying default bashrc..."
cp default.bashrc ~/.bashrc

# Download and Run LinuxDroid Script
echo "Downloading and running LinuxDroid script..."
curl -O https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroid.sh
if [[ ! -f LinuxDroid.sh ]]; then
    echo "Error: Failed to download LinuxDroid script."
    exit 1
fi
chmod +x LinuxDroid.sh
bash LinuxDroid.sh

# Installation Complete Message
echo "Installation completed! Run ./LinuxDroidmenu.sh to start."
