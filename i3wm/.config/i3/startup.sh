#!/usr/bin/zsh
xwallpaper --zoom ~/Pictures/Wallpaper/default.jpg ;
killall polybar ;
~/.config/polybar/launch_polybar.sh ;
sleep 2;
setxkbmap -layout "fr,ara" -option "grp:alt_shift_toggle";




