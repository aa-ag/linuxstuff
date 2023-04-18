#!/bin/bash
# SNAPSHOT=1
# while :
# do  
#     top -l 1 > "../output/top_output_$SNAPSHOT.txt"
#     sleep 60
#     ((SNAPSHOT++))
# done
nc -U /tmp/demo.sock -l
