if [[ "$OSTYPE" == "linux-gnu" && -d "$HOME/.gem/ruby" ]]; then
  export PATH="${PATH}:$(find "$HOME/.gem/ruby/"* -maxdepth 1 -name 'bin' -type d | tail -n 1)"
fi
