# Hacker Terminal Customization for Termux

This bash script customizes your Termux terminal to have a "hacker terminal" look. It installs and configures Zsh with the Powerlevel10k theme, adds useful aliases, and sets a custom welcome message with ASCII art. Additionally, it configures Neofetch to display system information on startup.

## Prerequisites

- Termux installed on your Android device.
- Internet connectivity to download packages and resources.

## Usage

1. Open the Termux app.

2. Install `git` if you don't have it already:

   ```
   pkg install git
   ```

3. Clone this repository:

   ```
   git clone https://github.com/arbajisscripting/hacker-terminal.git
   ```

   Alternatively, you can download the `install-hacker-terminal.sh` script directly from [here](https://raw.githubusercontent.com/arbajisscripting/hacker-terminal/main/install-hacker-terminal.sh).

4. Navigate to the cloned repository directory:

   ```
   cd hacker-terminal
   ```

5. Give execute permission to the setup script:

   ```
   chmod +x install-hacker-terminal.sh
   ```

6. Run the script:

   ```
   ./install-hacker-terminal.sh
   ```

   The script will install and configure Zsh with the Powerlevel10k theme, set custom aliases, and add a custom welcome message with ASCII art. It will also configure Neofetch to display system information on startup. Once the setup is complete, the new look will be applied to your Termux terminal.

7. (Optional) To set the terminal font to a hacker-like font, go to Termux settings > Style > Font > Choose a hacker-like font.

## Customization

If you want to further customize your Termux environment, you can edit the `.zshrc` file. It contains the Zsh configuration and aliases. To edit the `.zshrc` file, use a text editor such as Nano:

```
nano ~/.zshrc
```

## Note

Running scripts from untrusted sources can be risky. Always review the code to ensure it does what you expect. The script provided in this repository is just an example, and it's essential to understand the commands it executes before running it on your device.

## Credits

The custom welcome message with ASCII art is created using the `figlet` and `toilet` utilities.

The Powerlevel10k theme for Zsh is developed by Roman Perepelitsa (romkatv).

## License

This script is licensed under the [MIT License](LICENSE).

The Powerlevel10k theme for Zsh is developed by Roman Perepelitsa (romkatv).

## License
