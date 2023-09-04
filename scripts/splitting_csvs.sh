# !/bin/bash
read -p "Enter the path to the file you want split: " original_csv
echo $original_csv
# split --numeric-suffixes=1 -l 5000 ../test_data/fake_data.csv part_ && sed -i '1s/^'`head -n 1 ../test_data/fake_data.csv`'\n/' part_*.csv