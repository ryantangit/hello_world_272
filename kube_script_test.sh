#!/bin/bash
#created on linux

miniip=$(minikube ip)

hello=$(curl -s http://${miniip}:30001/) 
world=$(curl -s http://${miniip}:30002/)

together="${hello} ${world}"

echo "$together"
