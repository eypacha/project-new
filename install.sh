#!/usr/bin/env bash
set -e

# 1. Create the bin directory in your home if it doesn't exist
mkdir -p "$HOME/bin"

# 2. Download the script
curl -fsSL https://raw.githubusercontent.com/eypacha/project-new/master/bin/new -o "$HOME/bin/new"

# 3. Make it executable
chmod +x "$HOME/bin/new"

# 4. Add $HOME/bin to your PATH if it's not already there
if ! echo ":$PATH:" | grep -q ":$HOME/bin:"; then
  if [ -n "$ZSH_VERSION" ]; then
    if ! grep -q 'export PATH="$HOME/bin:$PATH"' ~/.zshrc 2>/dev/null; then
      echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
      echo 'Added $HOME/bin to PATH in ~/.zshrc.'
    fi
  elif [ -n "$BASH_VERSION" ]; then
    if ! grep -q 'export PATH="$HOME/bin:$PATH"' ~/.bashrc 2>/dev/null; then
      echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
      echo 'Added $HOME/bin to PATH in ~/.bashrc.'
    fi
  else
    echo 'Please add export PATH="$HOME/bin:$PATH" to your shell config file.'
  fi
else
  echo "$HOME/bin is already in your PATH."
fi

echo "\nInstallation complete!"
echo "If this is your first time installing, restart your terminal or run:"
echo "  source ~/.zshrc   # or source ~/.bashrc"
echo "\nYou can now use the 'new' command from anywhere."
