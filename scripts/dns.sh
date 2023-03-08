sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder

scutil --dns | grep 'nameserver\[[0-9]*\]'

networksetup -getdnsservers Wi-Fi