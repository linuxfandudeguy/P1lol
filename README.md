# P1lol

![Screenshot 2024-07-30 9 28 33 AM](https://github.com/user-attachments/assets/62677d8e-38d4-4b77-93b0-2239dbe51ea8)


![Screenshot 2024-07-30 9 29 57 AM](https://github.com/user-attachments/assets/328346e5-3e5f-4e72-81ff-9cfc036793e9)

P1lol is a prompt tool that makes your prompt in your terminal look way more visually appealing.

In order to install this tool you need to install `curl`.

Install this package with your terminals package manager.


Once you have installed `curl`, run this command: 

## Bash
```bash
curl -sL "https://raw.githubusercontent.com/linuxfandudeguy/P1lol/main/p1lol.sh" -o /tmp/p1lol.sh && chmod +x /tmp/p1lol.sh && { grep -q "/tmp/p1lol.sh" ~/.bashrc || echo "source /tmp/p1lol.sh" >> ~/.bashrc; } && source ~/.bashrc && echo "Installation complete. The script has been added to your ~/.bashrc. You may need to restart your terminal or refresh your session."
```
## Zsh
```bash
curl -sL "https://raw.githubusercontent.com/linuxfandudeguy/P1lol/main/p1lol.sh" -o /tmp/p1lol.sh && chmod +x /tmp/p1lol.sh && { grep -q "/tmp/p1lol.sh" ~/.zshrc || echo "source /tmp/p1lol.sh" >> ~/.zshrc; } && source ~/.zshrc && echo "Installation complete. The script has been added to your ~/.zshrc. You may need to restart your terminal or refresh your session."
```
Once you are done run `source ~/.bashrc` or `source ~/.bashrc` or start a new terminal session.

You should see the prompt:

![Screenshot 2024-07-30 9 20 58 AM](https://github.com/user-attachments/assets/9964d4a7-c7fc-45ec-980d-f6b99ab3b06c)

If you don't like it you can delete it with this command:

## Bash

```bash
TMP_FILE="/tmp/p1lol.sh"; CONFIG_FILE="$HOME/.bashrc"; [ -f "$TMP_FILE" ] && rm "$TMP_FILE" && echo "Removed $TMP_FILE."; grep -q "source $TMP_FILE" "$CONFIG_FILE" && sed -i "\|source $TMP_FILE|d" "$CONFIG_FILE" && echo "Removed sourcing from $CONFIG_FILE."; source "$CONFIG_FILE"; echo "Uninstallation done. You may enter a new terminal session or refresh your terminal."
```
## Zsh

```bash
TMP_FILE="/tmp/p1lol.sh"; CONFIG_FILE="$HOME/.zshrc"; [ -f "$TMP_FILE" ] && rm "$TMP_FILE" && echo "Removed $TMP_FILE."; grep -q "source $TMP_FILE" "$CONFIG_FILE" && sed -i "\|source $TMP_FILE|d" "$CONFIG_FILE" && echo "Removed sourcing from $CONFIG_FILE."; source "$CONFIG_FILE"; echo "Uninstallation done. You may enter a new terminal session or refresh your terminal."
```
Once you have uninstalled it, your prompt should look like this:

![Screenshot 2024-07-30 9 26 18 AM](https://github.com/user-attachments/assets/251ef523-b8b1-4fcc-a7d4-ea7738ece59e)

The P1lol prompt displays your Linux username, hostname, current time, current directory and current git branch.



