#!/bin/bash
HH_USERNAME=a1234567
HH_PASSWORD=salakala
TMP_DATE=$(date)
if [ 'nmcli c status | grep -i haagaheliapublic' ]
then
sleep 2
curl --data-binary "buttonClicked=4&err_flag=0&err_msg=&info_flag=0&info_msg=&redirect_url=&username="$HH_USERNAME"&password="$HH_PASSWORD"" https://wlan-login.haaga-helia.fi/login.html
notify-send "Haaga-Helia WLAN found, credentials sent"
# logging
echo "$TMP_DATE Haagahelia attempted, user $TMP_USERNAME" > /tmp/hhwlan
fi
