#!/usr/bin/env bash
set -e

# Color variables (like in bin/new)
if [[ $TERM == *color* ]]; then
  COLOR_NEW="\e[1;32m"
  COLOR_TYPE="\e[1;33m"
  COLOR_APP_NAME="\e[1;34m"
  COLOR_ARGUMENTS="\e[1;35m"
  COLOR_ERROR="\e[1;31m"
  COLOR_RESET="\e[0m"
else
  COLOR_NEW=""
  COLOR_TYPE=""
  COLOR_APP_NAME=""
  COLOR_ARGUMENTS=""
  COLOR_ERROR=""
  COLOR_RESET=""
fi

printf "${COLOR_NEW}== Project-new Installer ==${COLOR_RESET}\n"

# 1. Create the bin directory in your home if it doesn't exist
printf "${COLOR_TYPE}Creating $HOME/bin if it doesn't exist...${COLOR_RESET}\n"
mkdir -p "$HOME/bin"

# 2. Download the script
printf "${COLOR_TYPE}Downloading the script to $HOME/bin/new...${COLOR_RESET}\n"
curl -fsSL https://raw.githubusercontent.com/eypacha/project-new/master/bin/new -o "$HOME/bin/new"

# 3. Make it executable
printf "${COLOR_TYPE}Making it executable...${COLOR_RESET}\n"
chmod +x "$HOME/bin/new"

# 4. Add $HOME/bin to your PATH if it's not already there
if ! echo ":$PATH:" | grep -q ":$HOME/bin:"; then
  if [ -n "$ZSH_VERSION" ]; then
    if ! grep -q 'export PATH="$HOME/bin:$PATH"' ~/.zshrc 2>/dev/null; then
      echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
      printf "${COLOR_NEW}Added $HOME/bin to PATH in ~/.zshrc.${COLOR_RESET}\n"
    fi
  elif [ -n "$BASH_VERSION" ]; then
    if ! grep -q 'export PATH="$HOME/bin:$PATH"' ~/.bashrc 2>/dev/null; then
      echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
      printf "${COLOR_NEW}Added $HOME/bin to PATH in ~/.bashrc.${COLOR_RESET}\n"
    fi
  else
    printf "${COLOR_ERROR}Please add export PATH=\"$HOME/bin:$PATH\" to your shell config file.${COLOR_RESET}\n"
  fi
else
  printf "${COLOR_NEW}$HOME/bin is already in your PATH.${COLOR_RESET}\n"
fi

printf "\n${COLOR_NEW}Installation complete!${COLOR_RESET}\n"
printf "If this is your first time installing, restart your terminal or run:\n"
printf "  source ~/.zshrc   # or source ~/.bashrc\n"
printf "\nYou can now use the '${COLOR_APP_NAME}new${COLOR_RESET}' command from anywhere.\n"
