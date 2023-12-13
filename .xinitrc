# default mic to off on start up
amixer --quiet set Captuer nocap

# auorandr for hdmi port
autorandr &
autorandr --change

# deamons
dunst & # notification deamon
clipmenud & # clipboard deamon

# sxhkd hotkeys manager
sxhkd &

# dwm status bar
slstatus &

# start dwm
exec dwm
