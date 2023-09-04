# !/bin/bash
read -p "Enter the name of the object you are trying to split (a, b, c, etc...): " object
read -p "Enter the path to the file you want split: " original_csv
read -p "Enter the path to the destination directory where you want the resulting split stored into: " destination_directory
read -p "Enter number of rows you want the resulting subfiles to have: " resulting_row_count

split --numeric-suffixes=1 -l $resulting_row_count $original_csv $object'_' 

# headers=$(head -n 1 ../test_data/fake_data.csv)

# for i in $(find . -type f -name "part_*.csv" -not -name "part_01.csv");
#     do sed -i '1s/^'$headers'\n/';
# done