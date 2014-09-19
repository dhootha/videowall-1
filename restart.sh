#!/bin/bash

killall loop.sh || true
killall avconv || true

for ip in 192.168.0.{1..4}; do
  ssh pi@$ip sudo reboot
done

sleep 60

/home/window/bin/loop.sh

exit 0