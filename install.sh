#!/bin/bash

# Define colors
RESET='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'

# Define the URL to fetch the script
SCRIPT_URL="https://raw.githubusercontent.com/linuxfandudeguy/P1lol/main/p1lol.sh"
SCRIPT_FILE="/tmp/p1lol.sh"
BASHRC_FILE="$HOME/.bashrc"

# Function to download and install the script
install_script() {
    echo -e "${YELLOW}Downloading the installation script from ${SCRIPT_URL}...${RESET}"
    
    # Download the script using curl
    curl -s -o "$SCRIPT_FILE" "$SCRIPT_URL"
    if [ $? -ne 0 ]; then
        echo -e "${RED}Failed to download the script.${RESET}"
        exit 1
    fi
    
    echo -e "${YELLOW}Script downloaded successfully.${RESET}"
    
    # Add the script to ~/.bashrc if not already present
    if ! grep -q "p1lol.sh" "$BASHRC_FILE"; then
        echo -e "${YELLOW}Adding the script to ${BASHRC_FILE}...${RESET}"
        echo "source $SCRIPT_FILE" >> "$BASHRC_FILE"
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}Script added to ${BASHRC_FILE} successfully!${RESET}"
        else
            echo -e "${RED}Failed to add the script to ${BASHRC_FILE}.${RESET}"
            exit 1
        fi
    else
        echo -e "${GREEN}Script is already present in ${BASHRC_FILE}.${RESET}"
    fi
    
    # Clean up
    rm "$SCRIPT_FILE"
}

# Function to confirm installation
confirm_install() {
    local prompt="$1"
    local response

    while true; do
        read -p "$(echo -e "${BLUE}${prompt} [y/n] ${RESET}")" response
        case "$response" in
            [yY][eE][sS]|[yY]) 
                return 0
                ;;
            [nN][oO]|[nN])
                return 1
                ;;
            *)
                echo -e "${RED}Invalid response. Please enter 'y' or 'n'.${RESET}"
                ;;
        esac
    done
}

# Main installation script
echo -e "${BLUE}Welcome to the P1lol installation script!${RESET}"

if confirm_install "Do you want to proceed with the installation?"; then
    install_script
else
    echo -e "${RED}Installation aborted.${RESET}"
    exit 1
fi

echo -e "${GREEN}Installation complete. Please restart your terminal or run 'source ~/.bashrc' to apply changes.${RESET}"
