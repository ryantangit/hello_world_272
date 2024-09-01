#!/bin/bash
#requires hello_272 and world_272 to be built

docker run -p 4445:4445 -d hello_272
docker run -p 5000:5000 -d world_272

hello=$(curl -s http://127.0.0.1:4445) 
world=$(curl -s http://127.0.0.1:5000)

together="${hello} ${world}"

echo "$together"
