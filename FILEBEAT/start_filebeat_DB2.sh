#!/bin/bash
DATE=$(date +"%y-%m-%d %T")
echo "Filebeat DB2 status is ..."
echo "$DATE"
echo "........................"
echo "........................"
systemctl status filebeat| grep "active (running)"
Filebeat_status=$?
if [ ${Filebeat_status} -eq 0 ]; then
    echo "Filebeat DB2 is still running"
else
    echo "Filebeat DB2 is not running"
    echo "STARTING ... " 
    systemctl start filebeat
    echo "Filebeat DB2 is started ... " 
    systemctl status filebeat
fi
