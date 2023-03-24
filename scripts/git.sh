#!/bin/bash
read -p "commit message: " cm
THISFILE="$(pwd)/${BASH_SOURCE[0]}"
git add $THISFILE
git commit -m "$cm"
git push