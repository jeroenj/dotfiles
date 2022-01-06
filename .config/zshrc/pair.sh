# Setup:
# * create `pair` user with `/home/pair` homedir and no password
# * create authorized keys per external user with the following options: `command="/usr/bin/tmux -S /tmp/tmux-1000/default attach -t pair",no-port-forwarding,no-x11-forwarding,no-agent-forwarding`

function pair {
  if [[ "$OSTYPE" != "linux-gnu" ]]; then
    echo "Only Linux is supported." 1>&2
    return 1
  fi

  if ! id pair &> /dev/null; then
    echo "A user named 'pair' is required." 1>&2
    return 1
  fi

  if [[ "$1" == "on" ]]; then
    sudo chmod 777 /tmp/tmux-1000
    sudo chmod 777 /tmp/tmux-1000/default
    sudo usermod -s /usr/bin/zsh pair
    tmux rename-session pair
    echo "pair mode enabled"
  elif [[ "$1" == "off" ]]; then
    tmux rename-session main
    tmux detach-client -a
    sudo usermod -s /usr/sbin/nologin pair
    # sudo killall -vu pair -HUP # TODO: iss this really needed?
    sudo chmod 770 /tmp/tmux-1000
    sudo chmod 770 /tmp/tmux-1000/default
    echo "pair mode disabled"
  else
    echo "Provide 'on' or 'off' as argument." 1>&2
    return 1
  fi
}
