#!/bin/bash
REMOTE=$(git remote -v)
arr=( $REMOTE )
read -p "git add: " addme
git add "$addme"
read -p "commit message: " cm
git commit -m "$cm"
echo '\n ^ pushing to' "${arr[4]}\n"
git push --quiet