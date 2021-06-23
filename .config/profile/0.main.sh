if [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH=/usr/local/bin:/usr/local/sbin:$PATH
  export BROWSER="open"
fi

export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"

export LANG="en_US.UTF-8"
export LC_CTYPE=$LANG
