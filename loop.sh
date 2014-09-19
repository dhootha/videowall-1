#!/bin/bash

VIDEOPATH="/home/window/videos"
SERVICE="avconv"
BROADCAST="udp://239.0.1.23:1234"

while true;
do
  for file in $VIDEOPATH/*
    $SERVICE -re -i $file -vcodec copy -f avi $BROADCAST
done

exit 0