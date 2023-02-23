#!/bin/bash

read -p "Please enter your name: " name

current_time=$(date +%H:%M:%S)

if [[ "$current_time" < "12:00:00" ]]; then
    greeting="Good morning"
elif [[ "$current_time" < "17:00:00" ]]; then
    greeting="Good afternoon"
else
    greeting="Good evening"
fi

echo "$greeting, $name!"	
