## XTERM SETTINGS
# By default, the terminal used will be xterm anyway.

# Disable shared system forced-renaming of tmux window titles
unset PROMPT_COMMAND

# Set default prompt
PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
