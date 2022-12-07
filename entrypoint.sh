#!/bin/bash

echo "Start uVNC Repeater"
/etc/init.d/uvncrepeater start

echo "Start log"
tail -f /var/log/uvncrepeater.log
