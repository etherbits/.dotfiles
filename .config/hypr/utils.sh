#!/bin/zsh

screenshot(){
    border-bottom: 3px solid rgba(100, 114, 125, 0.5);
  grimblast copysave area "$HOME/screenshots/$(date +%d-%m-%y_%H-%M-%S)_screenshot.png"
}

setTimer(){
  source $HOME/.zshrc
  timer 15:00 --waybar $HOME/status/timer; notify-send timer
}

if [[ "$1" == "--screenshot" ]]; then
  screenshot
elif [[ "$1" == "--timer" ]]; then
  setTimer
fi
