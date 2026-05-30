#!/usr/bin/env bash

printf "%s" "Waiting for the Internet connection (google.com:80)   "

#while ! ping  -c 1  -n  -w 5  google.com   &> /dev/null
while !   curl --max-time 5  --location google.com   &> /dev/null
do
    printf "%c" "."
    sleep 10
done
printf "%s" "   OK"
echo
sleep 10  # Wait for system clock update after boot