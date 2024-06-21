# Lines configured by zsh-newuser-install
. "$HOME/.asdf/asdf.sh"

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/etherbits/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias dotgit='/usr/bin/git --git-dir=/home/etherbits/.dotfiles/ --work-tree=/home/etherbits'

alias vim=nvim

alias paru="paru --limit 5"

export EDITOR=nvim

export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'

export PATH="$HOME/timer:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux64/bin"
export FLYCTL_INSTALL="/home/etherbits/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1
export ANDROID_HOME=/opt/android-sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export NDK_HOME=/opt/android-ndk
export JAVA_HOME=/opt/android-studio/jbr

export TMPDIR=$HOME/tmp
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# custom commands
pf(){
  if [[ $# -eq 1 ]]; then
      selected=$1
      selected=$(find  ~/projects ~/projects/exercism/gleam/ ~/ ~/.config/ -mindepth 1 -maxdepth 1 -type d | fzf -q $selected -1)
  else
      selected=$(find  ~/projects ~/projects/exercism/gleam/ ~/ ~/.config/ -mindepth 1 -maxdepth 1 -type d | fzf)
  fi

  if [[ -z $selected ]]; then
      exit 0
  fi

  echo $selected

  selected_name=$(basename "$selected" | tr . _)

  if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new -s $selected_name -c $selected -d -x "$(tput cols)" -y "$(tput lines)"
    if [[ $selected == ~/projects/* ]]; then
      tmux splitw -h -l '75%' -t $selected_name -c $selected
      tmux send-keys -t $selected_name 'vim .' Enter
    fi
    tmux attach -t $selected_name
  else
    tmux attach-session -t $selected_name
  fi

}

qc(){
  git add .
  git commit -m "$1"
}

qcp(){
  git add .
  git commit -m "$1"
  branch=$(git branch --show-current)
  git push origin $branch
}

cdf(){
  dir=$(find $1 -type d | fzf -q $2)
  if [[ -n $dir ]]; then
    cd $dir
  else
    echo "No directory found"
  fi
}

ghme(){
  xdg-open https://github.com/etherbits &!
}

qcpdots(){
  dotgit add -u
  dotgit commit -m "$1"
  dotgit push origin main
}

i(){
	sudo pacman -S "$1"
}


unzipd(){
  if [[ $# != 1 ]]; then echo I need a single argument, the name of the archive to extract; return 1; fi
  target="${1%.zip}"
  unzip "$1" -d "${target##*/}"
}

unzipad(){
  for zip in *.zip
  do
    dirname=`echo $zip | sed 's/\.zip$//'`
    if mkdir "$dirname"
    then
      if cd "$dirname"
      then
        unzip ../"$zip"
        cd ..
        # rm -f $zip # Uncomment to delete the original zip file
      else
        echo "Could not unpack $zip - cd failed"
      fi
    else
      echo "Could not unpack $zip - mkdir failed"
    fi
  done
}

ocrmanga(){
  mkdir og && mv *.* og && mokuro -d True og
}

cdmedia(){
  cd /mnt/store/media
}

eval "$(starship init zsh)"


# bun completions
[ -s "/home/etherbits/.bun/_bun" ] && source "/home/etherbits/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

source /home/etherbits/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# pnpm
export PNPM_HOME="/home/etherbits/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# Created by `pipx` on 2023-11-13 16:46:52
export PATH="$PATH:/home/etherbits/.local/bin"

# Turso
export PATH="/home/etherbits/.turso:$PATH"
