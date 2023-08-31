# !/bin/bash
split -l 5000 ../test_data/fake_data.csv part_ --additional-suffix=.csv --numeric-suffixes=1

# head -n 1 ../test_data/fake_data.csv