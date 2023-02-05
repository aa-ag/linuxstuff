#!/bin/bash

$ openssl version -a

$ wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz

# Privacy-Enhanced Mail (PEM) format
$ http://curl.haxx.se/docs/caextract.html

$ openssl genpkey -out fd.key -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -aes-128-cbc

$ openssl pkey -in fd.key -text -noout

$ openssl pkey -in fd.key -pubout -out fd-public.key

$ cat fd-public.key