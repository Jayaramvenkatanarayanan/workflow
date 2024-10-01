set -e

URL="$1"
MAX_TRIALS="$2"
DELAY="$3"

for i in $(seq 1 $MAX_TRIALS); do
  if curl --silent --fail "$URL"; then
    echo "Ping to $URL succeeded on trial $i"
    exit 0
  else
    echo "Ping to $URL failed on trial $i"
    sleep $DELAY
  fi
done

echo "Ping to $URL failed after $MAX_TRIALS trials"
exit 1