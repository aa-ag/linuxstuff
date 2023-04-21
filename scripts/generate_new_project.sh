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
REMOTE=$(git remote -v)
arr=( $REMOTE )
addme=''
while [ ! -f "$addme" ]
do  
    read -p "git add: " addme
    echo 'File does not exist: try again.'
done
echo "\ngreat! added $addme to stagin"
git add "$addme"
read -p "commit message: " cm
git commit -s -m "$cm" --quiet
echo '\n ^ pushing to' "${arr[4]}\n"
git push --quiet
EOL
# (5) initialized git repository
git init
# (6) open the directory
code .