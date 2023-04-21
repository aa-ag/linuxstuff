read -p "Project name: " projectname
mkdir "$projectname"
cd "$projectname"
touch .gitignore
touch README.md
echo "###$projectname\n\n" > README.md
touch gitme.sh