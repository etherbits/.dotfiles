# Setup fzf
# ---------
if [[ ! "$PATH" == */home/etherbits/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/etherbits/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/etherbits/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/etherbits/.fzf/shell/key-bindings.zsh"
