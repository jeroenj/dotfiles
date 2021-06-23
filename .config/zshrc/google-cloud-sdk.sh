if [[ "$OSTYPE" == "linux-gnu" ]]; then
  source '/opt/google-cloud-sdk/completion.zsh.inc'
  source '/opt/google-cloud-sdk/path.zsh.inc'
elif [[ "$OSTYPE" == "darwin"* ]]; then
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
fi
