<D-R>!/usr/bin/zsh
log="/home/perona/.config/i3/log.txt" 
echo "$(date) :starting startup script" > "$log";
xwallpaper --zoom ~/Pictures/Wallpaper/default.jpg ;
killall polybar ;
echo "$(date) :killed polybars" >> "$log" ;
~/.config/polybar/launch_polybar.sh ;
echo "$(date) : script started" >> "$log" ;
sleep 2;
setxkbmap -layout "fr,ara" -option "grp:alt_shift_toggle";
echo "$(date) : script is done"  >> "$log"




