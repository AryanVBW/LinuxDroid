#!/bin/bash

PS3="Welcome Vivek"

# Print a stylish welcome message
echo -e "\e[1m\e[32mWelcome to the Vivek Shell!\e[0m"

# Ask the user to select a language
select lng in Termux Ubantu
do
    case $lng in

        "Termux")
           echo "Exiting..."
           exit  ;;
        "Ubantu")
            echo "Starting Ubuntu..."
            bash ./start-ubuntu22.sh;;
        *)
           echo "Ooops, invalid selection."
           echo "Please select one of the following options:"
           echo "  * Termux"
           echo "  * Ubantu"
           ;;
    esac
done
