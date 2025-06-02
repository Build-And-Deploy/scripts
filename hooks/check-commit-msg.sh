#!/bin/bash

# SHA: Secure Hash Algorithm --> A unique id used by git to represent the state of the repository at any given point
# It is a unique fingerprint for a git object (ussually a commit), in a 40 char hexadecimal string

# oldrev: The SHA of the current/previous commit before the push
# If oldrev is all 0's (000000...), a new branch is being created

# newrev: The SHA of the new commit being pushed or updated
# If newrev is all 0's (000000...), a branch is being deleted

# Refs (References): Pointers to commits like refs/heads/main or refs/tags/v1.0

# Refname: A full name of the ref being updated

# Head (HEAD): Points to the current branch reference

# -----------------------------------------------------------------------------------------------------------------
# A custom hook to validate the format of a commit message.

set -e                                                                      # Exits script immediately if any command fails

COMMIT_MSG_FILE=$1                                                          # Commit message file is first arg passed to the script

COMMIT_MSG=$(cat "$COMMIT_MSG_FILE")                                        # Read commit message, store into a var

REGEX="^[A-Z]{2,5}-[0-9]+: .+"                                              # Defines regex to force prefix like "ABC-123" at start of msg

if ! echo "$COMMIT_MSG" | grep -Eq "$REGEX"; then
  echo "Commit Message is invalid!"
  echo "Expected Format: ABC-123: Short message"
  exit 1
fi

echo "Commit Message Format is valid!"
exit 0
