#!/bin/bash
DATE=$(date +"%y-%m-%d %T")
echo "Kibana status is ..." 
echo "$DATE"
echo "........................"
echo "........................"
systemctl status kibana | grep "active (running)"
Kibana_status=$?
if [ ${Kibana_status} -eq 0 ]; then
    echo "Kibana is still running" 
    exit 0
else
    echo "Kibana is not running" 
    exit 1
fi
