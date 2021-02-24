#!/usr/bin/env sh
sleep 1.6
killall -q polybar

polybar_proc=$(pgrep -u $UID -x polybar)

# Terminate already running bar instances
for i in ${polybar_proc} ; do
    kill -9 $i
done

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar top & bottom
polybar aux2 &
polybar vega &
polybar aux &
polybar aux3
echo "Bars launched..."
