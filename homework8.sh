#!/bin/bash

echo "***** System Information *****"
echo "--------------------------------------------"
echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -r)"
echo "--------------------------------------------"

echo "***** CPU Information *****"
echo "--------------------------------------------"
echo "CPU Model: $(grep "model name" /proc/cpuinfo | head -n 1 | cut -d ':' -f 2 | xargs)"
echo "Number of Cores: $(grep "cpu cores" /proc/cpuinfo | head -n 1 | cut -d ':' -f 2 | xargs)"
echo "CPU Architecture: $(arch)"
echo "--------------------------------------------"

echo "***** Memory Information *****"
echo "--------------------------------------------"
echo "Total Memory: $(free -h | grep Mem | awk '{print $2}')"
echo "Used Memory: $(free -h | grep Mem | awk '{print $3}')"
echo "Free Memory: $(free -h | grep Mem | awk '{print $4}')"
echo "--------------------------------------------"

echo "***** Disk Information *****"
echo "--------------------------------------------"
df -h
echo "--------------------------------------------"

echo "***** Network Information *****"
echo "--------------------------------------------"
ip addr show
echo "--------------------------------------------"
