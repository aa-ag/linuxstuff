#!/bin/bash
THISFILE="$(pwd)/${BASH_SOURCE[0]}"
# echo $THISFILE
git add $THISFILE
git commit -m "This commit was added and commited programatically"
git push