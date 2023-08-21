#! /bin/env sh

bpost_track() {
  code=$1

  while :; do
    curl --silent "https://track.bpost.cloud/track/itemonroundstatus?itemIdentifier=$code&postalCode=9090" | jq -r 'if .itemOnRoundStatus != null then .itemOnRoundStatus.nrOfStopsUntilTarget[] else "no info" end'
    sleep 30
  done
}
