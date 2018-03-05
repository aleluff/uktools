#!/bin/bash

runVersion=$(uname -r | cut -d'-' -f 1)
locVersion=$(dpkg -l |grep linux-image | awk '{print $2}' | sed -e 's/.0-.*rc/.rc/' | cut -d'-' -f 3 | sed -e 's/.rc/-rc/')

if ! grep -Fxq "$runVersion" <<< "$locVersion"; then
	echo 'Kernel out of date. System need to be rebooted'
fi
