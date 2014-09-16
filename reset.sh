#!/bin/bash

for ip in 192.168.0.{1..4}; do
  ssh pi@$ip sudo reboot
done

exit 0