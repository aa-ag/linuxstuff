#!/bin/bash
SNAPSHOT=1
while :
do  
    top -l 1 > "../output/top_output_$SNAPSHOT.txt"
    sendmail aaron@aguerrevere.dev < "../output/top_output_$SNAPSHOT.txt"
    rm "../output/top_output_$SNAPSHOT.txt"
    sleep 60
    ((SNAPSHOT++))
done
# nc -U /tmp/demo.sock -l
# lsof /tmp/demo.sock
# nc -l 1234
# nc -N 127.0.0.1 1234