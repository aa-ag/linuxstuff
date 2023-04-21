#!/bin/bash
# THISFILE="$(pwd)/${BASH_SOURCE[0]}"
# echo $THISFILE
bold=$(tput bold)
normal=$(tput sgr0)
dim=$(tput dim)

red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
nocolor=$(tput sgr0)

REMOTE=$(git remote -v)
arr=( $REMOTE )

addme=''
while [ ! -f "$addme" ]
do  
    read -p "${bold}Path to file you want to add:${normal} " addme
    if [ ! -f "$addme" ]; then
        echo "${red}\""$addme"\" doesn't exist.${nocolor}"
    else
        echo "${blue}Added \"$addme\" to stagin.${nocolor}"
    fi
done
git add "$addme"
read -p "${bold}Commit message${normal}: " cm
git commit -s -m "$cm" --quiet
echo "${green}pushing to ${arr[4]}"
git push --quiet