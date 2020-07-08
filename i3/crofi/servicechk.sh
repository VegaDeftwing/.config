#!/bin/bash
echo "NETDATA:"
systemctl status netdata.service | head -3 | grep active
hr
echo "SPIGOT:"
systemctl status spigot | head -3 | grep active
hr
echo "CJDNS:"
systemctl status cjdns.service | head -3 | grep active
hr
echo "APACHE:"
systemctl status httpd.service | head -3 | grep active
hr
echo "SSH:"
systemctl status sshd.service | head -3 | grep active



