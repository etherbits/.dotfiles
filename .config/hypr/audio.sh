#!/bin/bash

getVol(){
  pamixer --get-volume
}

showVol(){
  if [[ "$(pamixer --get-mute)" = "true" ]] then 
    notify-send -t 500 -h int:value:"$(getVol)" -h string:x-canonical-private-synchronous:sys-notify "🔈   $(getVol)%"

  else
    notify-send -t 500 -h int:value:"$(getVol)" -h string:x-canonical-private-synchronous:sys-notify "🔊   $(getVol)%"

  fi
}

incVol(){
  pamixer --allow-boost --set-limit 200 -i $1
  showVol
}

decVol(){
  pamixer --allow-boost -d $1
  showVol
}

toggleMute(){
  pamixer --toggle-mute
  showVol
}

if [[ "$1" == "--get" ]]; then
	getVol
elif [[ "$1" == "--inc" ]]; then
	incVol $2
elif [[ "$1" == "--dec" ]]; then
	decVol $2
elif [[ "$1" == "--toggle-mute" ]]; then
	toggleMute
else
	showVol
fi
