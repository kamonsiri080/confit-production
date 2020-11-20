#!/bin/bash
DATE=$(date +"%y-%m-%d %T")
echo "Filebeat DB2 status is ..."
echo "$DATE"
echo "........................"
echo "........................"
systemctl status filebeat | grep "inactive"
Filebeat_status=$?
if [ ${Filebeat_status} -eq 0 ]; then
    echo "Filebeat DB2 is still stopped" 
else
    echo "Filebeat DB2 is running"  
    echo "STOPING ... "
    systemctl stop filebeat
    systemctl status filebeat
fi

