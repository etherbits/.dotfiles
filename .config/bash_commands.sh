#!/bin/bash
export EDITOR="nvim"
export VISUAL="nvim"
export PATH="$HOME/.tmuxifier/bin:$PATH"

# git quick commit
function qc(){
  git add -A
  git commit -m "$1"
}

# git quick push
function qp(){
  git push origin $1
}

# git quick commit and push
function qcp(){
  git add -A
  git commit -m "$1"
  git push origin main
}

# open github profile
function ghme(){
  xdg-open https://github.com/etherbits
}

# cd to projects
function cdp(){
  cd ~/projects/$1
}

# open commands config
function commandConfig() {
  nvim ~/.config/bash_commands.sh
}

# open # open nvim config
function nvimConfig() {
  cd ~/.config/nvim/
  nvim .
}

# open alacritty config
function alacrittyConfig(){
  cd ~/.config/alacritty/
  nvim .
}
