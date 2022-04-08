if [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
  export BROWSER="open"
fi

export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"

export LANG="en_US.UTF-8"
export LC_CTYPE=$LANG
