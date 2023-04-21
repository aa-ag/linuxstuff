read -p "Project name: " projectname
mkdir "$projectname"
cd "$projectname"
touch .gitignore
touch README.md
echo "### $projectname\n\n" > README.md
touch gitme.sh
cat >gitme.sh <<EOL
REMOTE=$(git remote -v)
arr=( $REMOTE )
read -p "git add: " addme
git add "$addme"
read -p "commit message: " cm
git commit -m "$cm" --quiet
echo '\n ^ pushing to' "${arr[4]}\n"
git push --quiet
EOL