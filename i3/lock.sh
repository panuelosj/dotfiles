#!/usr/bin/env bash

icon="$HOME/.xlock/icon.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 5% -scale 2000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -i "$tmpbg" \
  --timepos="x-90:h-ch-20" \
  --datepos="tx+24:ty+25" \
  --clock --datestr "Type password to unlock..." \
  --insidecolor=00000000 --ringcolor=ffffffff --line-uses-inside \
  --keyhlcolor=d23c3dff --bshlcolor=d23c3dff --separatorcolor=00000000 \
  --insidevercolor=fecf4dff --insidewrongcolor=d23c3dff \
  --ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="x+290:h-120" \
  --radius=20 --ring-width=3 --veriftext="" --wrongtext="" \
  --textcolor="ffffffff" --timecolor="ffffffff" --datecolor="ffffffff"
