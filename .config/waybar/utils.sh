showVolume() {
  if [[ "$(pamixer --get-mute)" = "true" ]]; then
    echo '——';
  else
    echo "$(pamixer --get-volume)";
  fi
}

showMicIcon(){
  if [[ "$(pamixer --default-source --get-mute)" = "true" ]] then 
    echo ""

  else
    echo ""
  fi
}

if [[ "$1" == "--get-vol" ]]; then
  showVolume
elif [[ "$1" == "--get-mic-icon" ]]; then
  showMicIcon
fi
