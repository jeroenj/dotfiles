if [[ "$OSTYPE" == "linux-gnu" ]]; then
  source '/opt/google-cloud-cli/completion.zsh.inc'
  source '/opt/google-cloud-cli/path.zsh.inc'
elif [[ "$OSTYPE" == "darwin"* ]]; then
  source '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
  source '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
fi

export CLOUDSDK_PYTHON_SITEPACKAGES=1
