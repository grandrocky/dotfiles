#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $HOME/Imágenes/icons/key-256.png ]] && convert /tmp/screen.png $HOME/Imágenes/icons/key-256.png -gravity center -composite -matte /tmp/screen.png
# dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
i3lock -u -i /tmp/screen.png
