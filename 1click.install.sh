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
#!/data/data/com.termux/files/usr/bin/bash

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

# --- Gather detailed device information ---
manufacturer=$(getprop ro.product.manufacturer)
model=$(getprop ro.product.model)
board=$(getprop ro.product.board)
device=$(getprop ro.product.device)
kernel_version=$(uname -r)
cpu_info=$(cat /proc/cpuinfo | grep "model name" | uniq)
abi=$(getprop ro.product.cpu.abi)

# Display Info (requires Termux:API)
if command -v termux-density &> /dev/null; then
  density=$(termux-density)
  width=$(termux-display-width)
  height=$(termux-display-height)
  refresh_rate=$(termux-display-refresh-rate)
fi

# Battery Info (requires Termux:API)
if command -v termux-battery-status &> /dev/null; then
  battery_level=$(termux-battery-status | jq -r '.percentage')
  battery_status=$(termux-battery-status | jq -r '.status')
fi

# Network Info
ip_address=$(ifconfig wlan0 | grep "inet " | awk '{print $2}')
mac_address=$(ifconfig wlan0 | grep "ether" | awk '{print $2}')

# Storage Info
total_storage=$(df -h | grep "/data" | awk '{print $2}')
used_storage=$(df -h | grep "/data" | awk '{print $3}')
free_storage=$(df -h | grep "/data" | awk '{print $4}')

# Memory Info
total_memory=$(free -h | grep "Mem" | awk '{print $2}')
used_memory=$(free -h | grep "Mem" | awk '{print $3}')
free_memory=$(free -h | grep "Mem" | awk '{print $4}')

# Output the gathered information
echo "  Manufacturer: $manufacturer"
echo "  Model: $model"
echo "  Board: $board"
echo "  Device: $device"
echo "  Kernel Version: $kernel_version"
echo "  CPU: $cpu_info"
echo "  ABI: $abi"

if [[ ! -z "$density" ]]; then
  echo -e "\e[1m\e[34mDisplay Information:\e[0m"
  echo "  Density: $density dpi"
  echo "  Resolution: ${width}x${height}"
  echo "  Refresh Rate: $refresh_rate Hz"
fi

if [[ ! -z "$battery_level" ]]; then
  echo -e "\e[1m\e[34mBattery Information:\e[0m"
  echo "  Level: $battery_level%"
  echo "  Status: $battery_status"
fi

echo -e "\e[1m\e[34mNetwork Information:\e[0m"
echo "  IP Address: $ip_address"
echo "  MAC Address: $mac_address"

echo -e "\e[1m\e[34mStorage Information:\e[0m"
echo "  Total: $total_storage"
echo "  Used: $used_storage"
echo "  Free: $free_storage"

echo -e "\e[1m\e[34mMemory Information:\e[0m"
echo "  Total: $total_memory"
echo "  Used: $used_memory"
echo "  Free: $free_memory"
# --- End of detailed information gathering ---


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

# Determine package manager based on Android version
if [ "$android_sdk" -ge 31 ]; then
    pkg_manager="apt"
else
    pkg_manager="pkg"
fi

# Check and Update Packages
echo -e "\e[1m\e[34mChecking for package updates...\e[0m"
if ! $pkg_manager list-updates &> /dev/null; then
  echo "No package updates available."
else
  echo "Updating and upgrading packages..."
  $pkg_manager update -y && $pkg_manager upgrade -y
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
$pkg_manager install wget figlet curl jq -y  # Added jq for JSON parsing

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
