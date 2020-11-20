#!/bin/bash
DATE=$(date +"%y-%m-%d %T")
echo "Elasticsearch status is ..."
echo "$DATE"
echo "........................"
echo "........................"
systemctl status elasticsearch | grep "inactive"
Elasticsearch_status=$?
if [ ${Elasticsearch_status} -eq 0 ]; then
    echo "Elasticsearch is still stopped" 
else
    echo "Elasticsearch is running"  
    echo "STOPING ... "
    systemctl stop elasticsearch
    systemctl status elasticsearch
fi
