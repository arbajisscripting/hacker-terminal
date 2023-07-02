#!/data/data/com.termux/files/usr/bin/bash

# Update and upgrade packages
pkg update
pkg upgrade

# Install necessary packages
pkg install git zsh curl wget neofetch figlet toilet

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set ZSH as the default shell
chsh -s zsh

# Clone the Powerlevel10k theme for Oh My Zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

# Set the Powerlevel10k theme in the .zshrc file
sed -i 's/ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc

# Add some useful aliases to the .zshrc file
echo '
# Custom aliases
alias ls="ls -h --color=auto"
alias ll="ls -lh"
alias la="ls -lah"
alias grep="grep --color=auto"
alias cls="clear"
alias update="pkg update && pkg upgrade"
alias install="pkg install"
alias remove="pkg remove"
alias search="pkg search"
' >> ~/.zshrc

# Source the .zshrc file to apply the changes
source ~/.zshrc

# Configure Neofetch to run on startup
echo "neofetch" >> ~/.zshrc

# Add custom welcome message
echo '
figlet -f slant "Welcome to" | toilet -f term -F border --gay
echo "Type 'help' to get started!"
' >> ~/.zshrc

# Set the terminal font to a hacker-like font (Optional)
# Go to Termux settings > Style > Font > Choose a hacker-like font

# Apply changes
source ~/.zshrc

# Show the new look
neofetch

# Clean up unnecessary packages
pkg clean
