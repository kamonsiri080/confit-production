#!/bin/bash
DATE=$(date +"%y-%m-%d %T")
echo "Elasticsearch status is ..."
echo "$DATE"
echo "........................"
echo "........................"
systemctl status elasticsearch | grep "active (running)"
Elasticsearch_status=$?
if [ ${Elasticsearch_status} -eq 0 ]; then
    echo "Elasticsearch is still running"
else
    echo "Elasticsearch is not running"
    echo "STARTING ... " 
    systemctl start elasticsearch
    echo "Elasticsearch is started ... " 
    systemctl status elasticsearch
fi
