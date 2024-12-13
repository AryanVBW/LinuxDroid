#!/bin/bash

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
  local color="<span class="math-inline">2"
echo \-e "\\e\[</span>{color}m$text\e[0m"
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
