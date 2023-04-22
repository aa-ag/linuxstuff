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
for i in "${array[@]}"
do
    echo $i
done
# while [ ! -f "$addme" ]
# do
#     if [ ! -f "$addme" ]; then
#         echo "${red}\""$addme"\" doesn't exist.${nocolor}"
#     else
#         echo "  ${blue}staged \"$addme\".${nocolor}"
#     fi
# done
# git add "$addme"
# read -p "  ${bold}message${normal}: " cm
# git commit -s -m "$cm" --quiet
# echo "  ${green}pushing to ${arr[4]}${nocolor}"
# git push --quiet