#!/bin/bash
echo "+===================================================+"; echo "|  _     _                  ____            _     _ |"; echo "| | |   (_)_ __  _   ___  _|  _ \ _ __ ___ (_) __| ||"; echo "| | |   | |  _ \| | | \ \/ / | | |  __/ _ \| |/ _  ||"; echo "| | |___| | | | | |_| |>  <| |_| | | | (_) | | (_| ||"; echo "| |_____|_|_| |_|\__,_/_/\_\____/|_|  \___/|_|\__,_||"; echo "|                     By  Vivek W                   |"; echo "|                                                   |"; echo "|            GitHub:- Github.com/AryanVBW           |"; echo "|              Site:- AryanVBW.github.io            |"; echo "|         Instagram:- Aryan_Technolog1es            |"; echo "+===================================================+";
echo -e "\e[1m\e[32mWelcome to the LinuxDroid!\e[0m"
declare -a os_list=()

# Find and extract OS names
for file in start-*.sh; do
    os_name=$(echo "$file" | sed 's/start-\(.*\)\.sh/\1/')
    os_list+=("$os_name")
done

# Add "Termux" and "Kali Nethunter" options
os_list+=("Termux" "Kali Nethunter")

# Display OS options
for ((i=0; i<${#os_list[@]}; i++)); do
    echo "$((i+1)). ${os_list[i]}"
done

# Prompt user for the number of the OS they want to run
read -p "Enter the number of the OS you want to run: " os_number

# Validate user input
if [ "$os_number" -ge 1 ] && [ "$os_number" -le "${#os_list[@]}" ]; then
    selected_os="${os_list[$((os_number-1))]}"

    # Display the selected number and OS name
    echo "You selected OS number $os_number: $selected_os"

    # Execute the corresponding script or command
    case $selected_os in
        "Termux")
            echo "Exiting Termux."
            exit
            ;;
        "Kali Nethunter")
            echo "Executing nh command for Kali Nethunter (rootless)."
            nh
            ;;
        *)
            script_name="start-$selected_os.sh"
            if [ -f "$script_name" ]; then
                echo "Executing ./$script_name"
                ./"$script_name"
            else
                echo "Script $script_name not found."
            fi
            ;;
    esac
else
    echo "Invalid input. Please enter a valid number."
fi
