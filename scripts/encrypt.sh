#!/bin/bash
# $ openssl version
## encode
# echo $1 | openssl aes-256-cbc -a -salt -pass pass:thïs.¡s,@\;t3st
openssl enc -in test_data/text_test_file.txt -aes-256-cbc -d -a -pass pass:pswrd > test.enc