export FZF_DEFAULT_COMMAND='rg --hidden --files --no-ignore-vcs --glob="!.terraform/" --glob="!.git"'
export FZF_DEFAULT_OPTS="--no-mouse"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  source '/usr/share/fzf/key-bindings.zsh'
  source '/usr/share/fzf/completion.zsh'
elif [[ "$OSTYPE" == "darwin"* ]]; then
  source '/opt/homebrew/opt/fzf/shell/key-bindings.zsh'
  source '/opt/homebrew/opt/fzf/shell/completion.zsh'
fi
