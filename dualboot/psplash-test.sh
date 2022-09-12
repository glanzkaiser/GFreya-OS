#!/bin/bash

# Basic steps for psplash:
#   start it and background it
#   send it messages as to what to do
#     psplash-write "PROGRESS %" updates the bar with the percentage completed
#     psplash-write "MSG some text" displays "some text"
#   when everything is done tell it to quit

psplash > /dev/null 2>&1 &

psplash-write "PROGRESS 0"
psplash-write "0"
sleep 1
psplash-write "PROGRESS 25"
psplash-write "25"
sleep 1
psplash-write "PROGRESS 50"
psplash-write "30"
sleep 1
psplash-write "PROGRESS 75"
psplash-write "75"
sleep 1
psplash-write "PROGRESS 100"
psplash-write "100 / Fini"
sleep  1
psplash-write QUIT
