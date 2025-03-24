## XTERM SETTINGS
# By default, the terminal used will be xterm anyway.

# Disable shared system forced-renaming of tmux window titles
unset PROMPT_COMMAND

if [[ -n "$ZSH_VERSION" ]]; then
  # Zsh prompt
  PS1="%F{green}%n@%m%f:%F{blue}%~%f\$ "
else
  # Bash prompt
  PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
  set t_Co=16
fi
