#!/bin/bash
SNAPSHOT=1
while :
do  
    top -n 1 -b > "../output/top_output_$SNAPSHOT.txt"
    sleep 3
    ((SNAPSHOT++))
done
