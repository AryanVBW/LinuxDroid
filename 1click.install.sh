#!/bin/bash

# Display Banner
echo -e "\033[96m+===================================================+\033[0m";
echo -e "\033[96m|  _     _                  ____            _     _ |\033[0m";
echo -e "\033[96m| | |   (_)_ __  _   ___  _|  _ \ _ __ ___ (_) __| ||\033[0m";
echo -e "\033[96m| | |   | |  _ \| | | \ \/ / | | |  __/ _ \| |/ _  ||\033[0m";
echo -e "\033[96m| | |___| | | | | |_| |>  <| |_| | | | (_) | | (_| ||\033[0m";
echo -e "\033[96m| |_____|_|_| |_|\__,_/_/\_\____/|_|  \___/|_|\__,_||\033[0m";
echo -e "\033[96m|                     By  Vivek W                   |\033[0m";
echo -e "\033[96m|                                                   |\033[0m";
echo -e "\033[96m|            🔥GitHub:- Github.com/AryanVBW         |\033[0m";
echo -e "\033[96m|              🌐Site:- AryanVBW.github.io          |\033[0m";
echo -e "\033[96m|         💖Instagram:- Aryan_Technolog1es          |\033[0m";
echo -e "\033[96m+===================================================+\033[0m";

echo -e "\e[1m\e[32mWelcome to the LinuxDroid!\e[0m"

# Function to check if storage permission is granted
check_storage_permission() {
    if [ -d ~/storage ]; then
        return 0  # Permission granted
    else
        return 1  # Permission not granted
    fi
}

# Detect Android Version and Architecture
android_version=$(getprop ro.build.version.release)
android_sdk=$(getprop ro.build.version.sdk)
device_arch=$(uname -m)

echo -e "\e[1m\e[34mDevice Information:\e[0m"
echo -e "\e[1m  Android Version:\e[0m \e[32m$android_version\e[0m (SDK: \e[32m$android_sdk\e[0m)"
echo -e "\e[1m  Architecture:\e[0m \e[32m$device_arch\e[0m"

# Verify Android Compatibility
if [ -z "$android_version" ]; then
    echo -e "\e[31mError: Could not detect Android version\e[0m"
    exit 1
fi

version_number=${android_version%%.*}
if [ "$version_number" -lt 7 ]; then
    echo -e "\e[31mError: Your Android version ($android_version) is not supported\e[0m"
    echo "LinuxDroid requires Android 7.0 or higher"
    exit 1
fi

# Check and Update Packages
echo -e "\e[1m\e[34mChecking for package updates...\e[0m"
if ! pkg list-updates &> /dev/null; then
  echo "No package updates available."
else
  echo "Updating and upgrading packages..."
  pkg update -y && pkg upgrade -y
fi

# Handle Storage Permission
if ! check_storage_permission; then
    echo -e "\e[1m\e[34mRequesting storage permission for Termux...\e[0m"
    termux-setup-storage

    # Wait for user to grant permission
    count=0
    max_attempts=30
    while ! check_storage_permission && [ $count -lt $max_attempts ]; do
        sleep 1
        count=$((count + 1))
    done

    if ! check_storage_permission; then
        echo -e "\e[31mError: Storage permission not granted\e[0m"
        echo "Please grant storage permission and run the script again"
        exit 1
    fi
else
    echo "Storage permission already granted, continuing installation..."
fi

# Install Dependencies
echo -e "\e[1m\e[34mInstalling required packages...\e[0m"
pkg install wget figlet curl -y

# Download and Prepare Scripts
echo -e "\e[1m\e[34mDownloading LinuxDroid menu script...\e[0m"
curl -O https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroidmenu.sh
if [[ ! -f LinuxDroidmenu.sh ]]; then
  echo -e "\e[31mError: Failed to download LinuxDroid menu script.\e[0m"
  exit 1
fi
chmod +x LinuxDroidmenu.sh

echo -e "\e[1m\e[34mDownloading default bashrc...\e[0m"
wget https://github.com/AryanVBW/LinuxDroid/releases/download/A1/default.bashrc && chmod +x default.bashrc

# Backup and replace existing .bashrc 
echo -e "\e[1m\e[34mBacking up and replacing existing .bashrc...\e[0m"
if [[ -f ~/.bashrc ]]; then
    mv ~/.bashrc ~/.bashrc.bak
    echo "Existing .bashrc backed up to ~/.bashrc.bak"
fi
rm -rf .bashrc && cp default.bashrc .bashrc 


# Download and Run LinuxDroid Script
echo -e "\e[1m\e[34mDownloading and running LinuxDroid script...\e[0m"
curl -O https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroid.sh
if [[ ! -f LinuxDroid.sh ]]; then
    echo -e "\e[31mError: Failed to download LinuxDroid script.\e[0m"
    exit 1
fi
chmod +x LinuxDroid.sh
bash LinuxDroid.sh

# Execute LinuxDroidmenu.sh
echo -e "\e[1m\e[34mExecuting LinuxDroid menu...\e[0m"
chmod +x LinuxDroidmenu.sh && ./LinuxDroidmenu.sh

# Installation Complete Message
echo -e "\e[1m\e[32mInstallation completed! LinuxDroid menu script has been executed automatically.\e[0m"
