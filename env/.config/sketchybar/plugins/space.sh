#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

# sketchybar --set "$NAME" background.drawing="$SELECTED"

case "$SENDER" in
  "mouse.entered"|"space_change") # Update on hover and workspace change
    if [ "$SELECTED" = "true" ]; then
      sketchybar --set $NAME background.color=0xff285577
    else
      sketchybar --set $NAME background.color=0xff222222
    fi
    ;;
esac
