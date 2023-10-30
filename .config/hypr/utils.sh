#!/bin/zsh

screenshot(){
    border-bottom: 3px solid rgba(100, 114, 125, 0.5);
  grimblast copysave area "$HOME/screenshots/$(date +%d-%m-%y_%H-%M-%S)_screenshot.png"
}

setTimer(){
  source $HOME/.zshrc
  timer "$(echo '05:00\n10:00\n15:00\n30:00\n45:00' | rofi -dmenu -lines 0 -p 'Set timer' )" --waybar $HOME/status/timer; notify-send '  Timer' 'Timer has finished' -u critical; play $HOME/audio/alarm-sound.wav repeat 4
}

if [[ "$1" == "--screenshot" ]]; then
  screenshot
elif [[ "$1" == "--timer" ]]; then
  setTimer
fi
