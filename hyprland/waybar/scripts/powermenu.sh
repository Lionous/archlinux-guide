#!/bin/bash

option=$(printf "⏻  Poweroff\n  Reboot\n󰍃  Suspend\n󰗽  Exit\n󰤄  Block" | wofi --dmenu --prompt "Select an option")

case "$option" in
  "⏻  Poweroff") systemctl poweroff ;;
  "  Reboot") systemctl reboot ;;
  "󰍃  Suspend") systemctl suspend ;;
  "󰗽  Exit") hyprctl dispatch exit ;;
  "󰤄  Block") hyprlock ;;
esac
