#!/bin/bash

$(ab -n 10000 -c 100 https://unionleitor.top/) >> "saida1.txt"
$(ab -n 10000 -c 100 https://www.google.com/) >> "saida2.txt"
