#!/bin/bash

if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root (use sudo)" 1>&2
	exit 1
fi

cp car /usr/bin/
cp car.service /etc/systemd/system/
systemctl enable car.service
systemctl start car

exit 0

