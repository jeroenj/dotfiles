if [[ "$OSTYPE" == "darwin"* ]]; then
  function b64e {
    if [ $# -eq 0 ] ; then
      echo -e "Usage:\n\tb64e value"
      return 0
    fi

    echo -n "$1" | base64 | tee $(tty) | pbcopy
  }

  function b64d {
    if [ $# -eq 0 ] ; then
      echo -e "Usage:\n\tb64e value"
      return 0
    fi

    echo "$1" | base64 --decode | tee $(tty) | pbcopy; echo ""
  }
fi
