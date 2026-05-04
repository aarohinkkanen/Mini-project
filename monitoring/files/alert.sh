#!/bin/bash

# Raja-arvot
CPU_LIMIT=80
RAM_LIMIT=80
DISK_LIMIT=90

LOG="/var/log/monitoring/metrics.log"

# Luetaan viimeisin rivi
LATEST=$(tail -n 1 $LOG)

CPU=$(echo $LATEST | awk -F'CPU: ' '{print $2}' | cut -d'%' -f1)
RAM=$(echo $LATEST | awk -F'RAM: ' '{print $2}' | cut -d'%' -f1)
DISK=$(echo $LATEST | awk -F'DISK: ' '{print $2}' | cut -d'%' -f1)

# Raja-arvojen tarkistus

if [ "$CPU" -gt "$CPU_LIMIT" ]; then
	echo " HÄLYTYS: CPU on $CPU% (raja: $CPU_LIMIT%)"
fi

if [ "$RAM" -gt "$RAM_LIMIT" ]; then
        echo " HÄLYTYS: RAM on $RAM% (raja: $RAM_LIMIT%)"
fi

if [ "$DISK" -gt "$DISK_LIMIT" ]; then
        echo " HÄLYTYS: LEVY on $DISK% (raja: $DISK_LIMIT%)"
fi
