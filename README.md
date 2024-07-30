P1lol is a prompt tool that makes your prompt in your terminal look way more visually appealing.

In order to install this tool you need to install `curl`.

Install this package with your terminals package manager.


Once you have installed `curl`, run this command: 

## Bash
```bash
curl -sL "https://raw.githubusercontent.com/linuxfandudeguy/P1lol/main/p1lol.sh" -o /tmp/p1lol.sh && chmod +x /tmp/p1lol.sh && { grep -q "/tmp/p1lol.sh" ~/.bashrc || echo "source /tmp/p1lol.sh" >> ~/.bashrc; } && source ~/.bashrc && echo "Installation complete. The script has been added to your ~/.bashrc. You may need to restart your terminal or refresh your session."
```
## Zsh
Once you are done run `source ~/.bashrc` or `source ~/.bashrc` or start a new terminal session.

You should see the prompt:
![Screenshot 2024-07-30 9 20 58 AM](https://github.com/user-attachments/assets/9964d4a7-c7fc-45ec-980d-f6b99ab3b06c)
