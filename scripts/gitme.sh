#!/bin/bash
# : ' {
# 	"gitme": {
# 		"prefix": "gitme",
# 		"body": [
# 			"#!/bin/bash",
# 			"REMOTE=$(git remote -v)",
# 			"arr=( $$REMOTE )",
# 			"read -p \"git add: \" addme",
# 			"git add \"$$addme\"",
# 			"read -p \"commit message: \" cm",
# 			"git commit -m \"$$cm\" --quiet",
# 			"echo '\\n ^ pushing to' \"${arr[4]}\\n\"",
# 			"git push --quiet",
# 		],
# 		"description": "Bash script to prompt git add, commit & push"
# 	}
# }
# '
# THISFILE="$(pwd)/${BASH_SOURCE[0]}"
# echo $THISFILE
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