showActivityIcon(){
  if [[ -n "$(toki get)" ]]; then
    echo " ";
  fi
}

showTimerIcon(){
  if [[ -n "$(toki timer get)" ]]; then
    echo " ";
  fi
}

showVolumeIcon() {
  if [[ "$(pamixer --get-mute)" = "true" ]]; then
    echo "<span color=\"#aaa\"> </span>"
  else
    if [[ "$(pamixer --get-volume)" -ge 80 ]]; then
      echo "<span color=\"#fff\"> </span>"
    elif [[ "$(pamixer --get-volume)" -gt 5 ]]; then
      echo "<span color=\"#fff\"> </span>"
    else
      echo "<span color=\"#fff\"> </span>"
    fi
  fi
}

showMicIcon(){
  if [[ "$(pamixer --default-source --get-mute)" = "true" ]] then 
    echo "<span color=\"#aaa\"> </span>"
  else
    echo "<span color=\"#fff\"> </span>"
  fi
}

if [[ "$1" == "--get-vol-icon" ]]; then
  showVolumeIcon
elif [[ "$1" == "--get-mic-icon" ]]; then
  showMicIcon
elif [[ "$1" == "--get-activity-icon" ]]; then
  showActivityIcon
elif [[ "$1" == "--get-timer-icon" ]]; then
  showTimerIcon
fi
