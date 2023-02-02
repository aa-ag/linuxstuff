#!/bin/bash
## decode
# echo $1 | openssl aes-256-cbc -d -a -pass pass:thïs.¡s,@\;t3st
openssl enc -in test.enc -d -aes-256-cbc -pass stdin > test.txt
