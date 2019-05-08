
#!/bin/bash
intern=eDP1
extern=HDMI2

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    xrandr --output "$intern" --auto --output "$extern" --left-of "$intern" --auto
    xrandr --output "$extern" --primary
fi

sh /home/archd/.config/polybar/launch.sh


