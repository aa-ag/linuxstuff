#!/bin/bash

# http://www.graphicsmagick.org/

## format
gm convert test_data/joshua-j-cotten-Bxn2VB0O1sU-unsplash.jpg test_photo.png

## thumbnail
gm convert -size 120x120 test_data/joshua-j-cotten-Bxn2VB0O1sU-unsplash.jpg -resize 120x120 +profile "*" thumbnail.jpg