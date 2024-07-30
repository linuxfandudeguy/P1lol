P1lol is a prompt tool that makes your prompt in your terminal look way more visually appealing.

In order to install this tool you need to install `curl`.

Install this package with your terminals package manager.


Once you have installed `curl`, run this command: 

```bash
curl -sL "https://raw.githubusercontent.com/linuxfandudeguy/P1lol/main/p1lol.sh" -o /tmp/p1lol.sh && chmod +x /tmp/p1lol.sh && { grep -q "/tmp/p1lol.sh" ~/.bashrc || echo "source /tmp/p1lol.sh" >> ~/.bashrc; } && touch ~/.bash_prompt && source ~/.bashrc && echo "Installation complete. The script has been added to your ~/.bashrc. The prompt file has been refreshed. You may need to restart your terminal or refresh your session."
```
