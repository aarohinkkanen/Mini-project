#!/bin/bash

LOG="/var/log/monitoring/metrics.log"

clear
echo "====================="
echo "| SERVER MONITORING |"
echo "====================="
echo "Viimeisin tila:"
# Viimeinen rivi logista
tail -n 1 $LOG

echo "========================="
echo "|Latest 5 events:|"
echo "|=======================|"
tail -n 5 $LOG
echo "========================="
