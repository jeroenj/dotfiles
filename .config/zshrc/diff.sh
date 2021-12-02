if [[ "$OSTYPE" == "linux-gnu" ]]; then
  alias diff="diff --color"
else
  alias diff="colordiff"
fi
