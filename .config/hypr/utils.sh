#!/bin/zsh

screenshotArea(){
  grimblast --freeze copysave area "$HOME/screenshots/$(date +%d-%m-%y_%H-%M-%S)_screenshot.png"
}

screenshotScreen(){
  grimblast --freeze copysave output "$HOME/screenshots/$(date +%d-%m-%y_%H-%M-%S)_screenshot.png"
}

setTimer(){
  source $HOME/.zshrc
  timer "$(echo '05:00\n10:00\n15:00\n30:00\n45:00' | rofi -dmenu -lines 0 -p 'Set timer' )" --waybar $HOME/status/timer; notify-send '  Timer' 'Timer has finished' -u critical; play -v 0.4 $HOME/audio/alarm-sound.wav repeat 2
}

if [[ "$1" == "--screenshot-area" ]]; then
  screenshotArea
elif [[ "$1" == "--screenshot-screen" ]]; then
  screenshotScreen
elif [[ "$1" == "--timer" ]]; then
  setTimer
fi
