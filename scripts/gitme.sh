#!/bin/bash
# THISFILE="$(pwd)/${BASH_SOURCE[0]}"
# echo $THISFILE
bold=$(tput bold)
normal=$(tput sgr0)
REMOTE=$(git remote -v)
arr=( $REMOTE )
addme=''
while [ ! -f "$addme" ]
do  
    read -p "${bold}Path to file you want to add:${normal} " addme
    if [ ! -f "$addme" ]; then
        echo "\n 🛑 \""$addme"\" doesn't exist.\n"
    else
        echo "\n 🟢 Added \"$addme\" to stagin.\n"
    fi
done
git add "$addme"
read -p "${bold}Commit message${normal}: " cm
git commit -s -m "$cm" --quiet
echo "\n 🛫 ${bold}pushing to${normal} ${arr[4]} \n"
git push --quiet