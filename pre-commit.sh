#!/bin/bash
# This hook is used to inspect the snapshot thats about to be commited.
# Exiting non zero from this hook aborts commit

# Basic script to check which branch the commit is made to

# $(...) --> Command runs inside the parentheses, and substitues its output in place
# 'git symbolic-ref HEAD' --> Gives the full ref name (refs/head/main)
# --short --> Trims ref to just the branch name so 'main' or 'master

BRANCH_NAME=$(git symbolic-ref --short HEAD)              # Uses the git command to get the current branch name, and stores in shell var

# Check if the branch is main or master
if [ "$BRANCH_NAME" = "main" ] || [ "$BRANCH_NAME" = "master" ]; then
  echo "Commits to '$BRANCH_NAME' are not allowed directly."
  echo "Please create a feature branch and open a pull request instead."
  exit 1
fi

echo "Pre-Commit check passed."
exit 0
