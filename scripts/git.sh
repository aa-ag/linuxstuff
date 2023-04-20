#!/bin/bash
read -p "git add: " addme
git add "$addme"
read -p "commit message: " cm
git commit -m "$cm"
git push