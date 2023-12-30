#!/bin/sh
sudo hid-feature list-devices | grep -E '/dev' | cut -d ':' -f 1 
