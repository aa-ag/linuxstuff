#!/bin/bash

echo "this this
is is
a a
sample sample
text text
file file" >> test_data/text_test_file.txt

# word count -lines
wc -l test_data/text_test_file.txt

# word count -words
wc -w test_data/text_test_file.txt

## get stats
stat -l test_data/text_test_file.txt

## metadata
mdls test_data/text_test_file.txt