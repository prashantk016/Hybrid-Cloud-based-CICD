#!/bin/bash

sudo rm -rf /webapp
ls -a
echo "files inside app folder"
ls /app -a
sudo unzip /app/s.zip /webapp   
echo "files inside webapp folder"
ls /webapp -a
dotnet /webapp/Homeworks.dll