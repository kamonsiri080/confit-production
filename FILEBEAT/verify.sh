#!/bin/bash
DATE=$(date +"%y-%m-%d %T")
echo "Fliebeat DB2 status is ..." 
echo "$DATE"
echo "........................"
echo "........................"
systemctl status filebeat | grep "active (running)"
Filebeat_status=$?
if [ ${Filebeat_status} -eq 0 ]; then
    echo "Filebeat DB2 is still running" 
    exit 0
else
    echo "Filebeat DB2 is not running" 
    exit 1
fi

