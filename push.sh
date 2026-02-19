#!/bin/bash
# Run this script to push the project to GitHub
set -e
cd "$(dirname "$0")"

git init
git add .
git commit -m "Java BDD Cucumber framework with CI/CD"
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/yogeshwarkulkarni/java-cucumber-bdd.git
git branch -M main

git push -u origin main 2>/dev/null || {
  echo "Remote has existing commits, merging..."
  git pull origin main --allow-unrelated-histories --no-edit
  git push -u origin main
}

echo "Done. Repo: https://github.com/yogeshwarkulkarni/java-cucumber-bdd"
