## KEY REMAPPING

# Check if running in zsh
if [ -n "$ZSH_VERSION" ]; then
  # Enable vi mode in zsh
  bindkey -v

# Check if running in bash
elif [ -n "$BASH_VERSION" ]; then
  # Enable vi mode in bash
  set -o vi
fi

# Remaps Caps Lock to Escape, if possible.
if [[ "${machine}" == "Linux" ]]; then
  /usr/bin/setxkbmap -option "caps:swapescape"
fi
