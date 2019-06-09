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
sudo nohup dotnet /webapp/Homeworks.dll urls="http://*:5000" > /dev/null 2>&1 & 
sleep 3
echo -ne '\n'
echo -ne '\n'
echo "---Webapp started---"