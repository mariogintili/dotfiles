#!/bin/bash
gh() {
  git init $1
  cd $1
  touch README.md
  git add README.md
  git commit -m 'Initial commit'
  echo "Enter Github username:"
  read GITHUBUSER
  curl -s -u ${GITHUBUSER} https://api.github.com/user/repos -d "{\"name\": \"$1\", \"private\": false, \"has_issues\": true, \"has_downloads\": true, \"has_wiki\": false}" > /dev/null
  git remote add origin https://github.com/${GITHUBUSER}/$1
  echo "New repository created at https://github.com/${GITHUBUSER}/$1"
}
