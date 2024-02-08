showVolumeIcon() {
  if [[ "$(pamixer --get-mute)" = "true" ]]; then
    echo '';
  else
    if [[ "$(pamixer --get-volume)" -ge 100 ]]; then
      echo '';
    elif [[ "$(pamixer --get-volume)" -gt 30 ]]; then
      echo '';
    else
      echo '';
    fi
  fi
}

showMicIcon(){
  if [[ "$(pamixer --default-source --get-mute)" = "true" ]] then 
    echo ""

  else
    echo ""
  fi
}

showPowerMenu() {
  option=$(echo "  Lock\n  Restart\n  Sleep\n  Hibernate\n  Shutdown" | rofi -dmenu -lines 0 -p "Power menu")
  notify-send $option
  case $option in
    "  Lock")
      swaylock
      ;;
    "  Restart")
      systemctl reboot
      ;;
    "  Sleep")
      systemctl suspend
      ;;
    "  Hibernate")
      systemctl hibernate
      ;;
    "  Shutdown")
      systemctl poweroff
      ;;
  esac
}

if [[ "$1" == "--get-vol-icon" ]]; then
  showVolumeIcon
elif [[ "$1" == "--get-mic-icon" ]]; then
  showMicIcon
elif [[ "$1" == "--power-menu" ]]; then
  showPowerMenu
fi
