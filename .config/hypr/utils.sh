#!/bin/zsh

screenshotArea(){
  grimblast --freeze copysave area "$HOME/screenshots/$(date +%d-%m-%y_%H-%M-%S)_screenshot.png"
}

screenshotScreen(){
  grimblast --freeze copysave output "$HOME/screenshots/$(date +%d-%m-%y_%H-%M-%S)_screenshot.png"
}

# setTimer(){
#   source $HOME/.zshrc
#   timer "$(echo '05:00\n10:00\n15:00\n30:00\n45:00' | rofi -dmenu -lines 0 -p 'Set timer' )" --waybar $HOME/status/timer; notify-send '  Timer' 'Timer has finished' -u critical; play -v 0.4 $HOME/audio/alarm-sound.wav repeat 2
# }

setTimer(){
  toki timer start "$(rofi -dmenu -p 'Start timer' )";
}

stopTimer(){
  toki timer stop
}

setActivity(){
  toki start "$(rofi -dmenu -p 'Start task' )";
}

stopActivity(){
  toki stop
}

if [[ "$1" == "--screenshot-area" ]]; then
  screenshotArea
elif [[ "$1" == "--screenshot-screen" ]]; then
  screenshotScreen
elif [[ "$1" == "--timer" ]]; then
  setTimer
elif [[ "$1" == "--activity" ]]; then
  setActivity
elif [[ "$1" == "--stop-timer" ]]; then
  stopTimer
elif [[ "$1" == "--stop-activity" ]]; then
  stopActivity
else
  echo "Invalid argument"
  exit 1
fi
