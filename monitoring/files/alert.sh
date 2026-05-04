#!/bin/bash

# Raja-arvot
CPU_LIMIT=80
RAM_LIMIT=80
DISK_LIMIT=90

LOG="/var/log/monitoring/metrics.log"

# Luetaan viimeisin rivi
LATEST=$(tail -n 1 $LOG)

CPU=$(echo $LATEST | awk -F'CPU: ' '{print $2}' | cut -d'%' -f1 | tr ',' '.' | awk -F'.' '{print $1}')
RAM=$(echo $LATEST | awk -F'RAM: ' '{print $2}' | cut -d'%' -f1)
DISK=$(echo $LATEST | awk -F'DISK: ' '{print $2}' | cut -d'%' -f1)

# Raja-arvojen tarkistus

if [ "$CPU" -gt "$CPU_LIMIT" ]; then
	echo " WARNING: CPU is $CPU% (limit: $CPU_LIMIT%)"
fi

if [ "$RAM" -gt "$RAM_LIMIT" ]; then
        echo " WARNING: RAM is $RAM% (limit: $RAM_LIMIT%)"
fi

if [ "$DISK" -gt "$DISK_LIMIT" ]; then
        echo " WARNING: DISK is $DISK% (limit: $DISK_LIMIT%)"
fi
