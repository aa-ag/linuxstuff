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

read -p "${bold}path:${normal} " addme
IFS=' ' read -ra array <<< "$addme"
for file in "${array[@]}"
do
    if [ ! -f "$file" ]; then
        echo "  ${red}\""$file"\" doesn't exist.${nocolor}"
        git reset
        exit
    else
        git add "$file"
        echo "  ${blue}staged \"$file\".${nocolor}"
    fi
done
read -p "  ${bold}message${normal}: " cm
git commit -s -m "$cm" --quiet
echo "  ${green}pushing to ${arr[4]}${nocolor}"
git push --quiet