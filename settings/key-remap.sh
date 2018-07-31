## KEY REMAPPING
# Remaps Caps Lock to Escape, if possible.

if [ ${machine} == Linux ]; then
  /usr/bin/setxkbmap -option "caps:swapescape"
fi
