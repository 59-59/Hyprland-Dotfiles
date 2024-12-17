#!/bin/sh

wallpaper=$(find "$HOME/Pictures/wallpapers/$theme/" -name "*.*" | sort -R | head -1)
escaped_wallpaper=$(printf '%s' "$wallpaper" | sed 's|/|\\/|g')

sed -i "45s|.*|background-image: url(\"$escaped_wallpaper\", height);|" "$HOME/.config/rofi/theme.css"

swww img $wallpaper --transition-fps 144 --transition-type grow --transition-pos "$(hyprctl cursorpos)" --transition-duration 3
