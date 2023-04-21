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
read -p "git add: " addme
if [[ -f "$addme" ]]; then
    git add "$addme"
    read -p "commit message: " cm
    git commit -m "$cm" --quiet
    echo '\n ^ pushing to' "${arr[4]}\n"
    git push --quiet
else
    echo "File does not exist. Start over."
    exit 1
fi