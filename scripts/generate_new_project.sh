read -p "Root project directory name: " projectname
mkdir "$projectname"
cd "$projectname"
touch .gitignore
touch README.md
touch gitme.sh