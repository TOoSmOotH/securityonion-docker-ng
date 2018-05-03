#!/bin/bash

# Start Suricata - --init-errors-fatal could be added to make it die if rules are wrong
/usr/local/bin/suricata -c /usr/local/etc/suricata/suricata.yaml --af-packet=$INTERFACE --user=940 --group=940
