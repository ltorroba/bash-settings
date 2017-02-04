export VISUAL=nvim
export EDITOR="$VISUAL"

/usr/bin/setxkbmap -option "caps:swapescape"

# Terminal colors
export TERM=xterm-256color
eval `dircolors ~/.dir_colors/dircolors`
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
set t_Co=16

# If this is an xterm set the title to user@host:dir
case "$TERM" in
  xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
  *)
    ;;
esac

alias tmux="TERM=screen-256color-bce tmux"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Try to load aliases from alias file
if [ -f ~/.config/bash/.bash_aliases ]; then
  . ~/.config/bash/.bash_aliases
fi

export NVM_DIR="/home/ltorroba/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
