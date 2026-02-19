#!/bin/bash
# Run this script to push the project to GitHub
set -e
cd "$(dirname "$0")"

echo "==> Setting up git..."
git init
git add .
git status

# Commit only if there are changes
if git diff --staged --quiet 2>/dev/null && git diff --quiet 2>/dev/null; then
  echo "==> No changes to commit (already committed?)."
else
  git commit -m "Java BDD Cucumber framework with CI/CD"
fi

git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/yogeshwarkulkarni/java-cucumber-bdd.git
git branch -M main

echo "==> Pushing to GitHub..."
if ! git push -u origin main; then
  echo ""
  echo "==> Push was rejected (remote may have README). Merging and pushing..."
  git pull origin main --allow-unrelated-histories --no-edit --no-rebase
  git push -u origin main
fi

echo ""
echo "Done. Repo: https://github.com/yogeshwarkulkarni/java-cucumber-bdd"
