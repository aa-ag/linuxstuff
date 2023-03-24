#!/bin/bash
read -p "Commit message: " cm
THISFILE="$(pwd)/${BASH_SOURCE[0]}"
git add $THISFILE
git commit -m "{$cm}"
git push