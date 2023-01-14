#!/bin/bash
# https://exiftool.org/
brew install exiftool
exiftool test_data/joshua-j-cotten-Bxn2VB0O1sU-unsplash.jpg >> 'test_data/exif.txt'
