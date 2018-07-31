## COLORS
# Sets terminal colors depending on OS

if [ ${machine} == Linux ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
  set t_Co=16
fi
