# !/bin/bash
split --numeric-suffixes=1 -l 5000 ../test_data/fake_data.csv part_

headers=$(head -n 1 ../test_data/fake_data.csv)

for i in $(find . -type f -name "part_*.csv" -not -name "part_01.csv");
    do sed -i '1s/^'$headers'\n/';
done