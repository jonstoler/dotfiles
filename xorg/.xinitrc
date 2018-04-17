xrdb -merge .Xresources

xautolock -locker "betterlockscreen -l" &

~/bin/mkwall
unclutter -idle 1 -root &
taralli &

# compton -b
redshift -t 6500:4500 -l 34:-118 &

polybar bar &
dunst &

sxhkd &

pcmanfm -d &

xsetroot -cursor_name left_ptr
sxhkd -c ~/.config/sxhkd/sxhkdrc-wmutils &
exec ~/bin/wm/liftoff
