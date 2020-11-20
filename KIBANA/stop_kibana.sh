TE=$(date +"%y-%m-%d %T")
echo "Kibana status is ..."
echo "$DATE"
echo "........................"
echo "........................"
systemctl status kibana | grep "inactive"
Kibana_status=$?
if [ ${Kibana_status} -eq 0 ]; then
    echo "Kibana is still stopped" 
else
    echo "Kibana is running"  
    echo "STOPING ... "
    systemctl stop kibana
    systemctl status kibana
fi
