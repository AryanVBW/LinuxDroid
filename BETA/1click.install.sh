#!/bin/bash

# Function to detect Android version
detect_android_version() {
  local api_level=$(getprop ro.build.version.sdk)
  local version_code=$(getprop ro.build.version.release)
  echo "Android API Level: $api_level"
  echo "Android Version Code: $version_code"
}

# Function to detect device architecture
detect_device_architecture() {
  local arch=$(getprop ro.product.cpu.abi)
  echo "Device Architecture: $arch"
}

# Function to display LinuxDroid logo
display_logo() {
  echo -e "\033[96m+===================================================+\033[0m"
  echo -e "\033[96m|  _     _                  ____            _     _ |\033[0m"
  echo -e "\033[96m| | |   (_)_ __  _   ___  _|  _ \ _ __ ___ (_) __| ||\033[0m"
  echo -e "\033[96m| | |   | |  _ \| | | \ \/ / | | |  __/ _ \| |/ _  ||\033[0m"
  echo -e "\033[96m| | |___| | | | | |_| |>  <| |_| | | | (_) | | (_| ||\033[0m"
  echo -e "\033[96m| |_____|_|_| |_|\__,_/_/\_\____/|_|  \___/|_|\__,_||\033[0m"
  echo -e "\033[96m|                     By  Vivek W                   |\033[0m"
  echo -e "\033[96m|                                                   |\033[0m"
  echo -e "\033[96m|            🔥GitHub:- Github.com/AryanVBW         |\033[0m"
  echo -e "\033[96m|              🌐Site:- AryanVBW.github.io          |\033[0m"
  echo -e "\033[96m|         💖Instagram:- Aryan_Technolog1es          |\033[0m"
  echo -e "\033[96m+===================================================+\033[0m"
}

# Function to display colored text
color_text() {
  local text="$1"
  local color="$2"
  echo -e "\e[${color}m$text\e[0m"
}

# Function to install GUI version based on OS choice and Android version
install_gui_version() {
  local os_choice="$1"
  local cmd=""

  # Construct the appropriate command based on OS choice and Android version
  case $os_choice in
    1)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install kali-xfce"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali-xfce.sh -O kali-xfce.sh && chmod +x kali-xfce.sh && bash kali-xfce.sh"
      fi
      ;;
    2)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install ubuntu22-xfce"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu22/ubuntu22-xfce.sh -O ubuntu22-xfce.sh && chmod +x ubuntu22-xfce.sh && bash ubuntu22-xfce.sh"
      fi
      ;;
    3)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install arch-xfce"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Arch/armhf/arch-xfce.sh -O arch-xfce.sh && chmod +x arch-xfce.sh && bash arch-xfce.sh"
      fi
      ;;
    4)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install debian-xfce"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Debian/debian-xfce.sh -O debian-xfce.sh && chmod +x debian-xfce.sh && bash debian-xfce.sh"
      fi
      ;;
    5)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install manjaro-xfce"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Manjaro/manjaro-xfce.sh -O manjaro-xfce.sh && chmod +x manjaro-xfce.sh && bash manjaro-xfce.sh"
      fi
      ;;
    6)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install void-xfce"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Void/void-xfce.sh -O void-xfce.sh && chmod +x void-xfce.sh && bash void-xfce.sh"
      fi
      ;;
    7)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install alpine-xfce"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Alpine/alpine-xfce.sh -O alpine-xfce.sh && chmod +x alpine-xfce.sh && bash alpine-xfce.sh"
      fi
      ;;
    8)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install fedora-xfce"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Fedora/fedora-xfce.sh -O fedora-xfce.sh && chmod +x fedora-xfce.sh && bash fedora-xfce.sh"
      fi
      ;;
    9)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install nethunter-rootless"
      else
        cmd="termux-setup-storage && pkg install wget && wget -O install-nethunter-termux https://offs.ec/2MceZWr && chmod +x install-nethunter-termux && ./install-nethunter-termux"
      fi
      ;;
    10)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install parrot-xfce"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/Scripts/InstallScript/Cli/parrot.sh -O parrot.sh && chmod +x parrot.sh && bash parrot.sh -y"
      fi
      ;;
  esac

  # Execute the constructed command
  eval "$cmd"
}

# Function to install CLI version based on OS choice and Android version
install_cli_version() {
  local os_choice="$1"
  local cmd=""

  # Construct the appropriate command based on OS choice and Android version
  case $os_choice in
    1)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install kali"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali.sh -O kali.sh && chmod +x kali.sh && bash kali.sh"
      fi
      ;;
    2)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install ubuntu22"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu22/ubuntu22.sh -O ubuntu22.sh && chmod +x ubuntu22.sh && bash ubuntu22.sh"
      fi
      ;;
    3)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install arch"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Arch/armhf/arch.sh -O arch.sh && chmod +x arch.sh && bash arch.sh"
      fi
      ;;
    4)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install debian"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Debian/debian.sh -O debian.sh && chmod +x debian.sh && bash debian.sh"
      fi
      ;;
    5)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install manjaro"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Manjaro/manjaro.sh -O manjaro.sh && chmod +x manjaro.sh && bash manjaro.sh"
      fi
      ;;
    6)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install void"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Void/void.sh -O void.sh && chmod +x void.sh && bash void.sh"
      fi
      ;;
    7)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install alpine"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Alpine/alpine.sh -O alpine.sh && chmod +x alpine.sh && bash alpine.sh"
      fi
      ;;
    8)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install fedora"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Fedora/fedora.sh -O fedora.sh && chmod +x fedora.sh && bash fedora.sh"
      fi
      ;;
    9)
      color_text "Nethunter CLI is not available." "31"
      exit 1
      ;;
    10)
      if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
        cmd="proot-distro install parrot"
      else
        cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/Scripts/InstallScript/Cli/parrot.sh -O parrot.sh && chmod +x parrot.sh && bash parrot.sh -y"
      fi
      ;;
  esac

  # Execute the constructed command
  eval "$cmd"
}

# --- Main script ---

# Display Android version and architecture
detect_android_version
detect_device_architecture

# Display logo
display_logo

# Update and upgrade packages
color_text "Updating and upgrading packages..." "32"
pkg update -y && pkg upgrade -y

# Set up storage permissions
color_text "Setting up storage permissions..." "32"
termux-setup-storage

# Download and install necessary packages based on Android version
if [[ $(getprop ro.build.version.sdk) -ge 30 ]]; then
  color_text "Installing proot-distro..." "32"
  pkg install proot-distro -y
else
  color_text "Installing proot..." "32"
  pkg install proot -y
fi

# Install wget and figlet
color_text "Installing wget and figlet..." "32"
pkg install wget -y && pkg install figlet -y

# Download default bashrc
color_text "Downloading default bashrc..." "32"
curl -O https://github.com/AryanVBW/LinuxDroid/releases/download/A1/default.bashrc
chmod +x default.bashrc

# Replace current .bashrc with default bashrc
color_text "Replacing current .bashrc with default bashrc..." "32"
rm -rf .bashrc && cp default.bashrc .bashrc

# Display welcome message
color_text "Welcome to LinuxDroid!" "32"

# Define array of supported operating systems
declare -a os_list=(
  "Kali"
  "Ubuntu 22"
  "Arch"
  "Debian"
  "Manjaro"
  "Void"
  "Alpine"
  "Fedora"
  "Nethunter"
  "Parrot"
)

# Display OS options
for ((i=0; i<${#os_list[@]}; i++)); do
  echo "$((i+1)). ${os_list[i]}"
done

# Prompt user for the number of the OS they want to install
read -p "Enter the number of the OS you want to install: " os_number

# Validate user input
if [[ "$os_number" -ge 1 && "$os_number" -le "${#os_list[@]}" ]]; then
  selected_os="${os_list[$((os_number-1))]}"

  # Display the selected number and OS name
  echo "You selected OS number $os_number: $selected_os"

  # Prompt user for GUI or CLI version
  read -p "Do you want to install the GUI version? (y/n): " gui_choice

  # Install the selected OS version
  if [[ "$gui_choice" == "y" ]]; then
    install_gui_version "$os_number"
  else
    install_cli_version "$os_number"
  fi
else
  color_text "Invalid input. Please enter a valid number." "31"
fi

# Display completion message
color_text "Installation completed successfully!" "32"
