!pip install --upgrade pip

import pyfiglet
from colorama import Fore, Style, init

# Initialize colorama
init()

# Create banner with custom font
banner = pyfiglet.figlet_format("Setup AI", font="slant")

# Print colored banner
print(Fore.CYAN + banner + Style.RESET_ALL)
print(Fore.GREEN + "Welcome to the AI Setup Script!" + Style.RESET_ALL)

#logic for setup online/offline AI
while True:
    user_input = input("Would you like to use LinuxDroid AI offline? (yes/no): ").lower()
    
    if user_input == "yes":
        print("Installing packages...")
        git clone https://github.com/minhmc2007/A.R.O.N.A/ ~/ai
        !pip install torch transformers peft colorama
        !pip install google-generativeai colorama
        print("Testing AI...)
        
        python3 ~/ai/chatbot.py
    elif user_input == "no":
        print("Setup online AI...")
        !pip install google-generativeai colorama

        
    else:
        print("Invalid input. Please enter 'yes' or 'no'.")
        # The loop will automatically repeat

#!pip install torch transformers peft accelerate bitsandbytes datasets
