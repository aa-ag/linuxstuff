# (1) Ask user for project name 
# & create a new directory
read -p "Project name: " projectname
mkdir "$projectname"
cd "$projectname"
# (2) create a gitignore file
touch .gitignore
cat >.gitignore <<'EOL'
# https://github.com/github/gitignore
gitme.sh
.DS_Store
.env
EOL
# (3) create a README
touch README.md
title=$(python -c "print('$projectname'.title())")
echo "### $title\n" > README.md
# (4) create a gitme 
touch gitme.sh
cat >gitme.sh <<'EOL'
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
    read -p "> ${bold}path:${normal} " addme
    if [ ! -f "$addme" ]; then
        echo "${red}\""$addme"\" doesn't exist.${nocolor}"
    else
        echo "${blue}staged \"$addme\".${nocolor}"
    fi
done
git add "$addme"
read -p "> ${bold}message${normal}: " cm
git commit -s -m "$cm" --quiet
echo "> ${green}pushing to ${arr[4]}${nocolor}"
git push --quiet
EOL
# (5) initialized git repository
git init
# (6) open the directory
code .