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
bold=$(tput bold)
normal=$(tput sgr0)

cyan=$(tput setaf 6)
red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
nocolor=$(tput sgr0)

REMOTE=$(git remote -v)
arr=( $REMOTE )

THISFILE="$(pwd)/${BASH_SOURCE[0]}"
echo "${cyan}current working directory: $THISFILE${nocolor}"

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
EOL
# (5) initialized git repository
git init
# (6) open the directory
code .