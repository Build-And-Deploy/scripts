#!/bin/bash
# Bash Help Script

# ========================================================
# VARIABLES
# ========================================================
NAME="Brendan"
AGE=100
echo "Hello, my name is $NAME and I am $AGE years old!"

# ========================================================
# ENVIRONMENT VARIABLES
# ========================================================
echo "The current user is: $USER"
echo "The current working directory is: $PWD"
echo "The home directory is: $HOME"
echo "The shell being used is: $SHELL"
echo "The path variable is: $PATH"

# ========================================================
# IF STATEMENTS
# ========================================================
# -eq: Equal
# -ne: Not equal
# -gt: Greater than
# -lt: Less than
# -ge: Greater than or equal to
# -le: Less than or equal to
if [ $AGE -ge 18 ]; then
    echo "You are an adult!"
else
    echo "You are a minor!"
fi

# ========================================================
# LOOPS
# ========================================================

# For Loop
echo "For Loop Example: 1 - 10"
for i in 1 2 3 4 5 6 7 8 9 10; do
    echo "Number: $i"
done

# Shorthand For Loop
echo "Shorthand For Loop Example: 1 - 10"
for i in {1..10}; do
    echo "Number: $i"
done

# While Loop
echo "While Loop Example: 1 - 10"
count=1
while [ $count -le 10 ]; do
    echo "Count: $count"
    count=$((count + 1))    # Increment counter var
done

# =========================================================
# FUNCTIONS
# =========================================================
say_hello() {
    echo "Hello from the function!"
}
say_hello

# Function with parameters
greet() {
    local name=$1
    echo "Hello, $name!"
}
greet "Brendan"

# =========================================================
# STRING OPERATIONS
# =========================================================
STR="Bash Scripting"
echo "String Length: ${#STR}"  # Length of string
echo "Substring: ${STR:0:4}"  # First 4 characters
echo "Uppercase: ${STR^^}"  # Convert to uppercase
echo "Lowercase: ${STR,,}"  # Convert to lowercase
echo "Replace 'Scripting' with 'Programming': ${STR/Scripting/Programming}"  # Replace substring

# =========================================================
# FILE CHECKS
# =========================================================
FILE="test.txt"

# Create test file if it doesn't exist
if [ ! -f "$FILE" ]; then
    echo "File does not exist. Creating $FILE..."
    touch "$FILE"
else
    echo "File exists: $FILE"
fi

# Check if file is readable, writable, and executable
echo "Checking if $FILE is readable"
if [ -r "$FILE" ]; then
    echo "File is readable."
else
    echo "File is not readable."
fi

# Read a file
echo "Reading contents of $FILE:"
while read line; do
    echo "> $line"
done < "$FILE"

# =========================================================
# COMMAND LINE ARGUMENTS
# =========================================================
echo "Script Name: $0"
echo "First Argument: $1"
echo "Second Argument: $2"
echo "All Arguments: $@"
echo "Number of Arguments: $#"

# Check if at least one argument is provided
if [ $# -lt 1 ]; then
    echo "Usage: $0 <arg1> <arg2> ..."
    exit 1
fi

# =========================================================
# GIT COMMANDS - BASICS
# =========================================================

# =========================================================
# GIT COMMANDS - HOOKS
# =========================================================

# Get a list of staged files
git diff --cached --name-only

# Get a list of modified (unstaged) files
git diff --name-only

# Check if a specific file is staged
git diff --cached --name-only | grep -q "filename.txt"

# Check for blocked extensions
git diff --cached --name-only | grep -E '\.env$|\.log$|\.secret$'

# Get the commit message file (Passed as $1 in hook)
cat "$1"

# Get the current branch name
git rev-parse --abbrev-ref HEAD

# Check what branch is being pushed to
read local_ref local_sha remote_ref remote_sha

# Get commit author and message
git log -1 --pretty=format:"%h by %an on %ad%n%s"

# Get the commit message of latest commit
git log -1 --pretty=%B

# Check if a specific folder has changes staged
git diff --cached --name-only | grep -q "^repoData/"

# Count number of changes in a folder
git diff --cached --name-only | grep "^repoData/" | wc -l

# Show changed file in last commit
git show --name-only --pretty="" HEAD

