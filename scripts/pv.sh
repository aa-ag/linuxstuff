#!/bin/bash

$ brew install pv

$ pv -p test_data/fake_data.csv | zip > test_data/fakeDataZip.zip