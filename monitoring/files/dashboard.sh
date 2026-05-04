#!/bin/bash

LOG="/var/log/monitoring/metrics.log"

clear
echo "=============================================="
echo "SERVER MONITORING"
echo "=============================================="
echo "Latest status:"
# Viimeinen rivi logista
tail -n 1 $LOG

echo "=============================================="
echo "Latest 5 results:"
echo "=============================================="
tail -n 5 $LOG
echo "=============================================="
