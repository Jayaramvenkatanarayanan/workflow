#!/bin/sh

set -e

# Get inputs from environment variables
URL="${url}"
MAX_TRIALS="${max-trail}"
DELAY="${delay}"

# Loop to ping the URL the specified number of times
for i in $(seq 1 "$MAX_TRIALS"); do
  if curl --silent --fail "$URL"; then
    echo "Ping to $URL succeeded on trial $i"
    exit 0
  else
    echo "Ping to $URL failed on trial $i"
    sleep "$DELAY"
  fi
done

echo "Ping to $URL failed after $MAX_TRIALS trials"
exit 1