#!/bin/bash

screenshot(){
    border-bottom: 3px solid rgba(100, 114, 125, 0.5);
  grimblast copysave area "$HOME/screenshots/$(date +%d-%m-%y_%H-%M-%S)_screenshot.png"
}

if [[ "$1" == "--screenshot" ]]; then
  screenshot
fi
