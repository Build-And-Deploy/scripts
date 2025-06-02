#!/bin/bash

# SHA: Secure Hash Algorithm --> A unique id used by git to represent the state of the repository at any given point
# It is a unique fingerprint for a git object (ussually a commit), in a 40 char hexadecimal string

# oldrev: The SHA of the current/previous commit before the push
# If oldrev is all 0's (000000...), a new branch is being created

# newrev: The SHA of the new commit being pushed or updated
# If newrev is all 0's (000000...), a branch is being deleted

# -----------------------------------------------------------------------------------------------------------------
# A custom hook to validate the format of a commit message.
