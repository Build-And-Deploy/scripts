#!/bin/bash

echo "Running System Health Check..."

echo -e "CPU Load:"
uptime

echo -e "Memory Usage:"
free -h

echo -e "Disk Usage:"
df -h

echo -e "Network Info:"
echo -e "Uptime:"
