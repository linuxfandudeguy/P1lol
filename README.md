
# P1lol

![Screenshot 2024-07-30 9 28 33 AM](https://github.com/user-attachments/assets/62677d8e-38d4-4b77-93b0-2239dbe51ea8)

![Screenshot 2024-07-30 9 29 57 AM](https://github.com/user-attachments/assets/328346e5-3e5f-4e72-81ff-9cfc036793e9)

P1lol is a prompt tool that makes your prompt in your terminal look way more visually appealing.

## Installation

To install P1lol, you need to have `curl` installed on your system. If you don’t have `curl`, install it using your terminal’s package manager.

Once `curl` is installed, run the following command based on your shell:

### For Bash

```bash
sudo curl -sL "https://raw.githubusercontent.com/linuxfandudeguy/P1lol/main/p1lol.sh" -o /bin/p1lol.sh && sudo chmod +x /bin/p1lol.sh && { grep -q "/bin/p1lol.sh" ~/.bashrc || echo "source /bin/p1lol.sh" >> ~/.bashrc; } && source ~/.bashrc && echo "Installation complete. The script has been added to your ~/.bashrc. You may need to restart your terminal or refresh your session."
```

### For Zsh

```bash
sudo curl -sL "https://raw.githubusercontent.com/linuxfandudeguy/P1lol/main/p1lol.sh" -o /bin/p1lol.sh && sudo chmod +x /bin/p1lol.sh && { grep -q "/bin/p1lol.sh" ~/.zshrc || echo "source /bin/p1lol.sh" >> ~/.zshrc; } && source ~/.zshrc && echo "Installation complete. The script has been added to your ~/.zshrc. You may need to restart your terminal or refresh your session."
```

After running the command, open a new terminal session or refresh your current session to see the updated prompt.

## Uninstallation

To remove P1lol, use the following commands:

### For Bash

```bash
SCRIPT_FILE="/bin/p1lol.sh"; CONFIG_FILE="$HOME/.bashrc"; [ -f "$SCRIPT_FILE" ] && sudo rm "$SCRIPT_FILE" && echo "Removed $SCRIPT_FILE."; grep -q "source $SCRIPT_FILE" "$CONFIG_FILE" && sed -i "\|source $SCRIPT_FILE|d" "$CONFIG_FILE" && echo "Removed sourcing from $CONFIG_FILE."; source "$CONFIG_FILE"; echo "Uninstallation done. You may enter a new terminal session or refresh your terminal."
```

### For Zsh

```bash
SCRIPT_FILE="/bin/p1lol.sh"; CONFIG_FILE="$HOME/.zshrc"; [ -f "$SCRIPT_FILE" ] && sudo rm "$SCRIPT_FILE" && echo "Removed $SCRIPT_FILE."; grep -q "source $SCRIPT_FILE" "$CONFIG_FILE" && sed -i "\|source $SCRIPT_FILE|d" "$CONFIG_FILE" && echo "Removed sourcing from $CONFIG_FILE."; source "$CONFIG_FILE"; echo "Uninstallation done. You may enter a new terminal session or refresh your terminal."
```

Once uninstalled, your prompt should return to its previous appearance.

## License

MIT


