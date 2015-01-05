#!/bin/bash

xrandr --output VGA-0 --mode 1440x900 --left-of LVDS 
xrandr --output LVDS --mode 1366x768          
nitrogen --restore
