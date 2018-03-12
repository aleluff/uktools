#!/bin/bash

if [ -f /tmp/ukupgrade.nr ]; then
	echo 'Kernel out of date. System need to be rebooted'
fi
