#!/bin/bash
$ iconv -l

$ iconv -l | grep -i utf-16le

$ iconv -f utf-8 -t utf-16le test_data/fake_data.csv > test_data/fakedata_utf16le.csv