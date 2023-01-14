#!/bin/bash
split -l 1000 -d fake_data.csv prefix_

for i in $(find prefix_*); do mv $i "$i.csv"; done
