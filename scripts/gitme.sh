#!/bin/bash
# THISFILE="$(pwd)/${BASH_SOURCE[0]}"
# echo $THISFILE
REMOTE=$(git remote -v)
arr=( $REMOTE )
addme=''
while [ ! -f "$addme" ]
do  
    read -p "Path to file you want to add: " addme
    if [ ! -f "$addme" ]; then
        echo "\n 🛑 \""$addme"\" doesn't exist.\n"
    else
        echo "\n 🟢 Added \"$addme\" to stagin.\n"
    fi
done
git add "$addme"
read -p "commit message: " cm
git commit -s -m "$cm" --quiet
echo '\n 🛫 pushing to' "${arr[4]} \n"
git push --quiet