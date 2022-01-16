#!/bin/bash

sudo docker image pull ubuntu
sudo docker create -i -t --name "img1" ubuntu "bin/bash"
sudo docker create -i -t --name "img2" ubuntu "bin/bash"
sudo docker start img1
sudo docker start img2