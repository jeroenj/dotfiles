export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git --filename-pattern ""'
export FZF_DEFAULT_OPTS="--no-mouse"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  source '/usr/share/fzf/key-bindings.zsh'
  source '/usr/share/fzf/completion.zsh'
elif [[ "$OSTYPE" == "darwin"* ]]; then
  source '/usr/local/opt/fzf/shell/key-bindings.zsh'
  source '/usr/local/opt/fzf/shell/completion.zsh'
fi
