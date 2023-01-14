#!/bin/bash
split -l 1000 -d fake_data.csv prefix_

for i in $(find prefix_*); do mv $i "$i.csv"; done

for i in $(find . -type f -name "prefix_*.csv" -not -name "prefx_00.csv");
    do echo -e "$(head -l prefix_00.csv)\n(cat $i)" > $i;
done