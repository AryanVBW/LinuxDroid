#!/bin/bash
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

# Color codes for a visually appealing welcome message
green='\033[0;32m'
reset='\033[0m'

# Clear the terminal for a clean start (optional)
clear

echo -e "${green}Welcome to the LinuxDroid!${reset}"
echo

# Find and extract OS names (using a regular expression)
os_list=()
for file in start-*.sh; do
  os_name=${file##start-}  # Extract OS name using parameter expansion
  os_name=${os_name%.*}      # Remove ".sh" extension
  os_list+=("$os_name")
done

# Add "Termux" option
os_list+=("Termux")

# Display OS options with clear numbering
echo "Available operating systems:"
for ((i=0; i<${#os_list[@]}; i++)); do
  printf "%3d. %s\n" $((i+1)) "${os_list[i]}"
done

# Prompt user for OS choice and handle invalid input
read -p "Enter the number of the OS you want to run (or 0 to exit): " os_number

while [[ ! $os_number =~ ^[0-9]+$ ]]; do
  echo "Invalid input. Please enter a valid number (0 to exit) or a number corresponding to an available OS."
  read -p "Enter the number of the OS you want to run (or 0 to exit): " os_number
done

# Validate user input and perform actions
if [[ $os_number -eq 0 ]]; then
  echo "Exiting..."
  exit 0
elif [[ $os_number -ge 1 && $os_number -le "${#os_list[@]}" ]]; then
  selected_os="${os_list[$((os_number-1))]}"
  script_name="start-$selected_os.sh"

  if [[ -f "$script_name" ]]; then
    echo -e "You selected OS number $os_number: $selected_os\n"
    echo "Executing: ./$script_name"
    ./"$script_name"  # Execute the script using source command
  else
    echo "Script '$script_name' not found."
  fi
else
  echo "Invalid input. No matching OS found."
fi
