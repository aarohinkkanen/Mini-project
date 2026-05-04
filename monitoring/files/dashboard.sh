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
echo "|Viimeiset 5 tapahtumaa:|"
echo "|=======================|"
tail -n 5 $LOG
echo "========================="
