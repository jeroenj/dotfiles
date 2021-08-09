alias pairstart='tmux rename pair'
alias pairstop='tmux detach -a && tmux rename main'

function tmux-update-statusbar() {
  if [ `tmux list-clients | grep '' -c` -gt 1 ]
  then
    color='red,bright'
  else
    color='colour244'
  fi
  tmux set -ag status-left-style "fg=$color"
}

if [ -n "$TMUX" ] ; then
  precmd_functions+=("tmux-update-statusbar")
fi
