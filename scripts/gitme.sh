#!/bin/bash
: ' {
	"gitme": {
		"prefix": "gitme",
		"body": [
			"#!/bin/bash",
			"REMOTE=$(git remote -v)",
			"arr=( $REMOTE )",
			"read -p \"git add: \" addme",
			"git add \"$$addme\"",
			"read -p \"commit message: \" cm",
			"git commit -m \"$$cm\" --quiet",
			"echo '\\n ^ pushing to' \"${arr[4]}\\n\"",
			"git push --quiet",
		],
		"description": "Bash script to prompt git add, commit & push"
	}
}
'

REMOTE=$(git remote -v)
arr=( $REMOTE )
read -p "git add: " addme
git add "$addme"
read -p "commit message: " cm
git commit -m "$cm" --quiet
echo '\n ^ pushing to' "${arr[4]}\n"
git push --quiet