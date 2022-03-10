alias logd='tail -f log/development.log'
alias logt='tail -f log/test.log'
alias dbm='bin/rake db:migrate'
alias fm='foreman start -f Procfile.dev'

function sc() {
  if [ -e bin/rails ]; then
    ruby bin/rails console $*
  elif [ -e script/rails ]; then
    ruby script/rails console $*
  elif [ -e script/console ]; then
    ruby script/console $*
  else;
    echo "Not in a Rails project"
  fi
}

if [[ "$OSTYPE" == "linux-gnu" && -d "$HONE/.gem/ruby" ]]; then
  export PATH="${PATH}:$(find "$HOME/.gem/ruby/*" -maxdepth 1 -name 'bin' -type d | tail -n 1)"
fi
