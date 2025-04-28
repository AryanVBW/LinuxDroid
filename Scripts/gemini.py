import os
import sys
import time
from google import genai
from colorama import init, Fore, Style

# Initialize colorama for cross-platform colored terminal text
init()

def typing_effect(text, speed=0.01):
    """Simulate typing effect for text output"""
    for char in text:
        sys.stdout.write(char)
        sys.stdout.flush()
        time.sleep(speed)
    print()

def load_api_key():
    """Load API key from ~/.gemini.api file or ask for it if not found"""
    api_key_path = os.path.expanduser("~/.gemini.api")
    
    # Check if the API key file exists
    if os.path.exists(api_key_path):
        # File exists, read the API key
        with open(api_key_path, "r") as file:
            return file.read().strip()
    else:
        # File doesn't exist, ask for the API key
        print(f"{Fore.YELLOW}API key file not found at {api_key_path}{Style.RESET_ALL}")
        print(f"{Fore.CYAN}You can get your API key at: {Fore.GREEN}https://aistudio.google.com/apikey{Style.RESET_ALL}")
        api_key = input(f"{Fore.YELLOW}Please enter your Gemini API key: {Style.RESET_ALL}")
        
        # Save the API key to the file
        with open(api_key_path, "w") as file:
            file.write(api_key)
        
        print(f"{Fore.GREEN}API key saved to {api_key_path}{Style.RESET_ALL}")
        return api_key

def print_banner():
    """Print a cool banner for the chatbot"""
    banner = f"""
{Fore.CYAN}╔══════════════════════════════════════════════════════════════╗
║                                                              ║
║   {Fore.YELLOW} _____                _       _    {Fore.CYAN}_____  _____          {Fore.CYAN}║
║   {Fore.YELLOW}|   __|___ _____ ___|_|___ _|_|  {Fore.CYAN}|  _  ||     |         {Fore.CYAN}║
║   {Fore.YELLOW}|  |  | -_|     |   | |   | . |  {Fore.CYAN}|     ||  |  |         {Fore.CYAN}║
║   {Fore.YELLOW}|_____|___|_|_|_|_|_|_|_|_|___|  {Fore.CYAN}|__|__||_____|         {Fore.CYAN}║
║                                                              ║
║            {Fore.GREEN}Gemini-powered AI Assistant{Style.RESET_ALL}{Fore.CYAN}                     ║
║                                                              ║
╚══════════════════════════════════════════════════════════════╝{Style.RESET_ALL}
"""
    print(banner)

def initialize_gemini(api_key):
    """Initialize the Gemini client with API key"""
    try:
        genai.configure(api_key=api_key)
        client = genai.Client(api_key=api_key)
        return client
    except Exception as e:
        print(f"{Fore.RED}Error initializing Gemini client: {e}{Style.RESET_ALL}")
        sys.exit(1)

def chat_with_gemini(client):
    """Main chat loop with Gemini"""
    # Create a chat session
    chat = client.start_chat(
        model="gemini-2.0-flash",
        history=[],
    )
    
    print(f"{Fore.GREEN}Chat started! Type 'exit' or 'quit' to end the conversation.{Style.RESET_ALL}")
    print(f"{Fore.GREEN}Type 'clear' to clear the chat history.{Style.RESET_ALL}\n")
    
    while True:
        user_input = input(f"{Fore.YELLOW}You: {Style.RESET_ALL}")
        
        if user_input.lower() in ['exit', 'quit']:
            print(f"\n{Fore.GREEN}Thanks for chatting! Goodbye!{Style.RESET_ALL}")
            break
            
        if user_input.lower() == 'clear':
            chat = client.start_chat(
                model="gemini-2.0-flash",
                history=[],
            )
            print(f"{Fore.GREEN}Chat history cleared!{Style.RESET_ALL}\n")
            continue
            
        if not user_input.strip():
            continue
            
        try:
            print(f"{Fore.CYAN}AI:{Style.RESET_ALL} ", end="")
            
            # Get response from Gemini
            response = chat.send_message(user_input)
            
            # Display response with typing effect
            typing_effect(response.text)
            print()
            
        except Exception as e:
            print(f"{Fore.RED}Error: {e}{Style.RESET_ALL}\n")

def main():
    print_banner()
    api_key = load_api_key()
    client = initialize_gemini(api_key)
    chat_with_gemini(client)

if __name__ == "__main__":
    main()
