autoload compinit && compinit -d ~/.cache/zsh/zcompdump

if [ "~/.cache/zsh/zcompdump" -nt "~/.cache/zsh/zcompdump.zwc" -o ! -e "~/.cache/zsh/zcompdump.zwc" ]; then
  zcompile ~/.cache/zsh/zcompdump
fi

autoload bashcompinit && bashcompinit
