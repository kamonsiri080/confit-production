#!/bin/bash
DATE=$(date +"%y-%m-%d %T")
echo "Elasticsearch status is ..." 
echo "$DATE"
echo "........................"
echo "........................"
systemctl status elasticsearch | grep "active (running)"
Elastic_status=$?
if [ ${Elastic_status} -eq 0 ]; then
    echo "Elasticsearch is still running" 
    exit 0
else
    echo "Elasticsearch is not running" 
    exit 1
fi
