#!/bin/bash
#TMP_USERNAME=a1202422
#TMP_PASSWORD='asdasd'
LOGFILE='/tmp/HaagaHeliaPublic.log'
CREDENTIAL_LOCATION="$HOME/.HaagaHeliaPublic.cred"
source "$CREDENTIAL_LOCATION"
DATE=$(date "+%Y-%m-%d - %H:%M:%S")
#if [ 'nmcli c status | grep -i haagaheliapublic' ]
#then
#sleep 2
curl --max-time 10 --data-binary "buttonClicked=4&err_flag=0&err_msg=&info_flag=0&info_msg=&redirect_url=&username="$HH_USERNAME"&password="$HH_PASSWORD"" https://wlan-login.haaga-helia.fi/login.html |grep -q 'Failure'
if [ $? -eq 0 ]
then
    if ping -w 2 -c 1 8.8.8.8 &> /dev/null
    then
        echo "You are already connected to Internet"
        notify-send "You are already connected to Internet"
    else
        echo "Warning: Failed to authenticate to HaagaHeliaPublic, check your credentials"
        notify-send "Warning: Failed to authenticate to HaagaHeliaPublic, check your credentials"
        echo "$DATE, Failed to authenticate to HaagaHeliaPublic" > $LOGFILE
    fi
else
    echo "OK: Authentication successful"
    notify-send "Authenticated to HaagaHeliaPublic"
    echo "$DATE, Succesfully authenticated to HaagaHeliaPublic" > $LOGFILE
fi

