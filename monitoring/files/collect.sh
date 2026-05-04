#!/bin/bash

LOG="/var/log/monitoring/metrics.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# CPU:n käyttö
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)

# RAM:n käyttö
RAM=$(free | grep Mem | awk '{printf "%.0f", $3/$2 * 100}')

# Levytila
DISK=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)

# Tallenetaan lokiin
echo "$DATE | CPU: $CPU% | RAM: $RAM% | DISK: $DISK% >> $LOG
