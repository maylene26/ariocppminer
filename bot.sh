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
echo "" > auto.sh
echo "cd /ariominer/build" >> auto.sh && echo "./ariominer --mode miner --pool http://aropool.com/ --wallet 3FAW3U9KsjraJJJjgiLVhWAbuNb2zVdjtUpDRZxM6WX9nGh3NMvWmUCkUENeymz5ERjZvXDLYhQW5Hhnr63MjdZ --name bachok --cpu-intensity 80 --gpu-intensity-cblocks 100 --gpu-intensity-gblocks 50 -v" >> auto.sh
chmod 0777 auto.sh
crontab -l | grep -v '@reboot /ariominer/build/auto.sh' | crontab -
crontab -l > mycron
echo "@reboot /ariominer/build/auto.sh" >> mycron
crontab mycron
rm mycron
reboot
