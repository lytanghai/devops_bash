#!/usr/bin/bash

#1: Write a Shell Script to output a specified directory’s size.
read -p "Location Path: " location
cd $location
ls -l
read -p "Input Directory Name: " dirname
size=$(find . -name "$dirname" -type d -exec du -sh {} \;)
echo "Directory: $dirname has size of $size"

