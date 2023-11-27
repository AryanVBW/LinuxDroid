#!/bin/bash

while true; do
    clear
    echo "Select operating system you want to install:"
    echo "1. Kali"
    echo "2. Ubuntu"
    echo "3. Arch"
    echo "4. Debian"
    echo "5. Manjaro"
    echo "6. Void"
    echo "7. Alpine"
    echo "8. Fedora"
    echo "9. Nethunter Root less (Android specialize linux)"
    echo "10. Exit"

    read -p "Enter your choice (1-10): " os_choice

    case $os_choice in
        1|2|3|4|5|6|7|8|9)
            clear
            echo "You selected: "
            case $os_choice in
                1) os_name="Kali";;
                2) os_name="Ubuntu";;
                3) os_name="Arch";;
                4) os_name="Debian";;
                5) os_name="Manjaro";;
                6) os_name="Void";;
                7) os_name="Alpine";;
                8) os_name="Fedora";;
                9) os_name="Nethunter Root less (Android specialize linux)";;
            esac

            echo "1. GUI version"
            echo "2. CLI version"
            read -p "Enter version choice (1-2): " version_choice

            case $version_choice in
                1)
                    echo "Installing GUI version of $os_name..."
                    case $os_choice in
                        1) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali-xfce.sh -O kali-xfce.sh && chmod +x kali-xfce.sh && bash kali-xfce.sh";;
                        2) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu22/ubuntu22-xfce.sh -O ubuntu22-xfce.sh && chmod +x ubuntu22-xfce.sh && bash ubuntu22-xfce.sh";;
                        3) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Arch/armhf/arch-xfce.sh -O arch-xfce.sh && chmod +x arch-xfce.sh && bash arch-xfce.sh";;
                        4) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Debian/debian-xfce.sh -O debian-xfce.sh && chmod +x debian-xfce.sh &&  bash debian-xfce.sh";;
                        5) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Manjaro/manjaro-xfce.sh -O manjaro-xfce.sh && chmod +x manjaro-xfce.sh && bash manjaro-xfce.sh";;
                        6) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Void/void-xfce.sh && chmod +x void-xfce.sh && bash void-xfce.sh";;
                        7) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Alpine/alpinexfce.sh -O alpinexfce.sh && chmod +x alpinexfce.sh && bash alpinexfce.sh";;
                        8) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Fedora/fedora-xfce.sh -O fedora-xfce.sh && chmod +x fedora-xfce.sh && bash fedora-xfce.sh";;
                        9) cmd="termux-setup-storage && pkg install wget && wget -O install-nethunter-termux https://offs.ec/2MceZWr && chmod +x install-nethunter-termux && ./install-nethunter-termux";;
                    esac
                    ;;
                2)
                    echo "Installing CLI version of $os_name..."
                    case $os_choice in
                        1) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali.sh -O kali.sh && chmod +x kali.sh && bash kali.sh";;
                        2) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu22/ubuntu22.sh -O ubuntu22.sh && chmod +x ubuntu22.sh && bash ubuntu22.sh";;
                        3) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Arch/armhf/arch.sh -O arch.sh && chmod +x arch.sh && bash arch.sh";;
                        4) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Debian/debian.sh -O debian.sh && chmod +x debian.sh && bash debian.sh";;
                        5) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Manjaro/manjaro.sh -O manjaro.sh && chmod +x manjaro.sh && bash manjaro.sh";;
                        6) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Void/void.sh && chmod +x void.sh && bash void.sh";;
                        7) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Alpine/alpine.sh -O alpine.sh && chmod +x alpine.sh && bash alpine.sh";;
                        8) cmd="pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Fedora/fedora.sh -O fedora.sh && chmod +x fedora.sh";;
                        9) cmd="sudo apt update -y && sudo apt upgrade -y";;
                    esac
                    ;;
                *)
                    echo "Invalid choice. Please enter 1 or 2."
                    continue
                    ;;
            esac

            # Execute the selected command
            eval "$cmd"
            read -p "Press Enter to continue..."
            ;;
        10)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 10."
            ;;
    esac
done
