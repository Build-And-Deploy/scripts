#!/bin/bash
# Basic script to check which branch the commit is made to

# $(...) --> Command runs inside the parentheses, and substitues its output in place

BRANCH_NAME=$(git symbolic-ref --short HEAD)              # Uses the git command to get the current branch name, and stores in shell var






