#!/bin/bash
## .txt to .csv
sed 's/ \+/,/g' test_data/text_test_file.txt > test_data/text_converted_to_csv_test_file.csv

cat test_data/text_test_file.txt | tr -s '[:blank:]' ',' > test_data/text_converted_to_csv_test_file.csv

## .csv to .txt
cat test_data/text_converted_to_csv_test_file.csv | tr -s ',' ' ' > test_data/csv_converted_back_to_text_test_file.txt

## add header
echo -e "1\t2\t3" | cat - test_data/text_converted_to_csv_test_file.csv > test_data/text_converted_to_csv_with_headers_test_file.csv