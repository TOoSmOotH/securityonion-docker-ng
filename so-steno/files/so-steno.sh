#!/bin/bash

# Generate the keys if they have not been already
/usr/bin/stenokeys.sh 941 941
setcap 'CAP_NET_RAW+ep CAP_NET_ADMIN+ep CAP_IPC_LOCK+ep' /usr/bin/stenotype
/usr/bin/stenographer -syslog=false
