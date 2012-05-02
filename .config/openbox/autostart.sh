#!/bin/sh

# The background gets overriden by openbox-session otherwise.
DISPLAY=:0.1 feh --bg-scale /home/jasper/pics/wallpapers/lime.png
DISPLAY=:0.0 feh --bg-scale /home/jasper/pics/wallpapers/lime.png

DISPLAY=:0.1 /usr/local/bin/trayer --transparent true --alpha 230 &
DISPLAY=:0.0 /usr/local/bin/trayer --transparent true --alpha 230 &
