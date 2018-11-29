# Setup fzf
# ---------
if [[ ! "$PATH" == */home/chapa/bin/fzf-dir/bin* ]]; then
  export PATH="$PATH:/home/chapa/bin/fzf-dir/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/chapa/bin/fzf-dir/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/chapa/bin/fzf-dir/shell/key-bindings.bash"

