# (1) Ask user for project name 
# & create a new directory
read -p "Project name: " projectname
mkdir "$projectname"
cd "$projectname"
# (2) create a gitignore file
touch .gitignore
echo '.gitignore' gitme.sh
# (3) create a README
touch README.md
echo "### $projectname\n" > README.md
# (4) create a gitme 
touch gitme.sh
cat >gitme.sh <<'EOL'
REMOTE=$(git remote -v)
arr=( $REMOTE )
read -p "git add: " addme
git add "$addme"
read -p "commit message: " cm
git commit -m "$cm" --quiet
echo '\n ^ pushing to' "${arr[4]}\n"
git push --quiet
EOL
# (5) open the directory
code .