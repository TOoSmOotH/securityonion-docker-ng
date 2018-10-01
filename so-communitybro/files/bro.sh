#!/bin/bash

setcap cap_net_raw,cap_net_admin=eip /opt/bro/bin/bro
setcap cap_net_raw,cap_net_admin=eip /opt/bro/bin/capstats
chown -R 937:937 /opt/bro
chown -R 937:937 /nsm/bro
runuser bro -c '/opt/bro/bin/broctl deploy'
sleep infinity
