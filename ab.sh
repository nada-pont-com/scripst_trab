#!/bin/bash

$(ab -n 10000 -c 100 https://unionleitor.top/) >> "teste1.txt"
$(ab -n 10000 -c 100 https://www.google.com/) >> "teste2.txt"