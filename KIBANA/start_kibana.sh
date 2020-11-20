TE=$(date +"%y-%m-%d %T")
echo "Kibana status is ..."
echo "$DATE"
echo "........................"
echo "........................"
systemctl status kibana | grep "active (running)"
Kibana_status=$?
if [ ${Kibana_status} -eq 0 ]; then
    echo "Kibana is still running"
else
    echo "Kibana is not running"
    echo "STARTING ... " 
    systemctl start kibana
    echo "Kibana is started ... " 
    systemctl status kibana
fi
