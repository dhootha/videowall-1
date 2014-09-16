#!/bin/bash

while true;
do
  avconv -re -i $file -vcodec copy -f avi udp://239.0.1.23:1234
done

exit 0