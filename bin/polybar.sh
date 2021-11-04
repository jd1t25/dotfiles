#!/bin/bash

killall -q polybar

polybar -r bspwm 2> /dev/null & disown 
