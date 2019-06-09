#!/bin/bash
sudo kill $(ps aux | grep 'Homeworks.dll' | awk '{print $2}')
echo "---Webapp stopped---"
sudo rm -rf /webapp
ls -a
echo "---files inside app folder---"
ls /app -a
sudo unzip -o /app/s.zip -d /webapp
echo "---files inside webapp folder---"
ls /webapp -a
cd /
./startapp.sh