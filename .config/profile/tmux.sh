alias pairstart='tmux rename pair'
alias pairstop='tmux detach -a && tmux rename main'

function tmux-update-statusbar() {
  if [ `tmux list-clients | grep '' -c` -gt 1 ]
  then
    color='red'
  else
    color='black'
  fi
  tmux set -q status-left "#[fg=$color]#S:"
}

if [ -n "$TMUX" ] ; then
  precmd_functions+=("tmux-update-statusbar")
fi
