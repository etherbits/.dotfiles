#!/bin/bash

screenshot(){
  grimblast copysave area "$HOME/screenshots/$(date +%d-%m-%y_%H-%M-%S)_screenshot.png"
}

if [[ "$1" == "--screenshot" ]]; then
  screenshot
fi
