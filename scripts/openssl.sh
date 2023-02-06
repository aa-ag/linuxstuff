#!/bin/bash

$ openssl version -a

$ wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz

# Privacy-Enhanced Mail (PEM) format
$ http://curl.haxx.se/docs/caextract.html

$ openssl genpkey -out fd.key -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -aes-128-cbc

$ openssl pkey -in fd.key -text -noout

$ openssl req -text -in fd.csr -noout

$ openssl pkey -in fd.key -pubout -out fd-public.key

$ cat fd-public.key

## CSR
$ openssl req -new -key fd.key -out fd.csr

## self-signed CSR
$ openssl req -new -x509 -days 365 -key fd.key -out fd.crt

$ openssl req -new -x509 -days 365 -key fd.key -out fd.crt -subj "/C=GB/L=London/O=Feisty Duck Ltd/CN=www.feistyduck.com"