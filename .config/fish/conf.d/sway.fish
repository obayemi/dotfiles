# If running from tty1 start sway
set TTY1 (tty)
[ "$TTY1" = "/dev/tty1" ] && exec dbus-launch --sh-syntax --exit-with-session sway &> /tmp/sway.log
