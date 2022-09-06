#!/usr/bin/bash 

cd /mnt/c/Users/ggats/documents/test

# git init

git add .

DATE=$(date)

git commit -m "changes made on $DATE"

# git branch -M main

# git remote add origin https://github.com/soontobemil/Terraform-Iaac.git

# git push -u origin main #is there any way to skip [branch name]

git push main

# osascript -e "display notification 'pushed to remote' with title 'SUCCESS'"

