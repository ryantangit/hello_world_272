#!/bin/bash
#work only on linux
#
hello=$(curl -s http://192.168.49.2:30001/) 
world=$(curl -s http://192.168.49.2:30002/)

together="${hello} ${world}"

echo "$together"
