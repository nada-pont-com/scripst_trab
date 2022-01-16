#!/bin/bash

$(ab -n 1000 -c 10 https://unionleitor.top/) >> "teste1.txt"
$(ab -n 1000 -c 10 https://www.google.com/) >> "teste2.txt"
$(ab -n 1000 -c 10 https://www.xbox.com/) >> "teste3.txt"