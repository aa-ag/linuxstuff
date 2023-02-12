#!/bin/bash

hostname

/sbin/ifconfig

host myip.opendns.com resolver1.opendns.com

## MacOS: https://apple.stackexchange.com/questions/20547/how-do-i-find-my-ip-address-from-the-command-line
#### wireless:
ipconfig getifaddr en1