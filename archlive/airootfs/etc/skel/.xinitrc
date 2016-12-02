# Disable laptop display
xrandr --output "LVDS-1" --off
xrandr --output "VGA-1" --auto

exec bspwm
