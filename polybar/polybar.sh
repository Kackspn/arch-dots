#!/bin/sh

killall -q polybar 
echo "---" | tee -a /tmp/polybar.log
polybar bar 2>&1 | tee -a /tmp/polybar.log & disown
echo "Bar launched"
