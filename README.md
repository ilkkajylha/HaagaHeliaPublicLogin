HaagaHeliaPublic login tool
===========================

To automagically send credentials, when using NetworkManager, Put HaagaHeliaPublic.nm.sh to /etc/network/if-up.d/
If you dont use NetworkManager or you want to run the script manually, use HaagaHeliaPublic.sh. 
Remember to put your credentials to $HOME/.HaagaHeliaPublic.cred and chmod 400 $HOME/.HaagaHeliaPublic.cred

~~~bash
HH_USERNAME=a1202422
HH_PASSWORD='asdasdads'
~~~


Fixes and tips are welcome. Clone it, fix it, pull request it

---
This script was originally created by T-101(@ircnet) 
