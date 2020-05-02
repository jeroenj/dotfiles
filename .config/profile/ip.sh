if [[ "$OSTYPE" == "linux-gnu" ]]; then
  alias ipl="ip --oneline address show dev eno1 | awk '{print \$4}' | cut -d '/' -f 1"
  alias ipl4="ip -4 --oneline address show dev eno1 | awk '{print \$4}' | cut -d '/' -f 1"
  alias ipl6="ip -6 --oneline address show dev eno1 | awk '{print \$4}' | cut -d '/' -f 1"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  alias dog='dig +short'

  alias ipl='ifconfig | grep "inet" | grep -v 127.0.0.1 | grep -v ::1 | cut -d\  -f2'
  alias ipl4='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2'
  alias ipl6='ifconfig | grep "inet6" | grep -v ::1 | cut -d\  -f2'
fi

alias ip4='curl -4 https://ip.srvd.be'
alias ip6='curl -6 https://ip.srvd.be'
