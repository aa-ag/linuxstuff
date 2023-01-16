#!/bin/bash
zip -r test.zip test_data

zip test.zip test_data/joshua-j-cotten-Bxn2VB0O1sU-unsplash.jpg

# https://imagemagick.org/
convert <input file> quality 10% <output file>