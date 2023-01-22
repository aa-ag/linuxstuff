#!/bin/bash
## .txt to .csv
sed 's/ \+/,/g' test_data/text_test_file.txt > test_data/text_converted_to_csv_test_file.csv