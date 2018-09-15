#!/bin/bash
sudo apt-get update
sudo apt-get install build-essential git screen -y
sudo apt-get install ocl-icd-opencl-dev -y
sudo apt-get install g++ cmake git -y
git clone http://github.com/bogdanadnan/ariominer.git
cd ariominer
mkdir build
cd build
cmake .. 
make
./ariominer --mode miner --pool http://aropool.com/ --wallet 3FAW3U9KsjraJJJjgiLVhWAbuNb2zVdjtUpDRZxM6WX9nGh3NMvWmUCkUENeymz5ERjZvXDLYhQW5Hhnr63MjdZ --name hathien --cpu-intensity 80 --gpu-intensity-cblocks 100 --gpu-intensity-gblocks 50 -v
