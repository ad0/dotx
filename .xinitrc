#xsetroot -cursor_name left_ptr
 
if [ -f $HOME/.Xresources ]; then
  xrdb -merge $HOME/.Xresources
fi
if [ -f $HOME/.Xmodmap ]; then
  /usr/bin/xmodmap $HOME/.Xmodmap
  /usr/bin/xmodmap $HOME/.Xmodmap
fi

xscreensaver -no-splash &

if [ -f $HOME/images/wallpaper.png ]; then
  feh --bg-scale $HOME/images/wallpaper.png &
fi

exec xmonad
#exec gnome-session
