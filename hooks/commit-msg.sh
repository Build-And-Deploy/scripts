#!/bin/bash
# [1] https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks.html

# This hook takes one parameter: Path to a temp file containing the commit message written by the dev
# If the script exits non zero, git aborts the commut process

# Used to validate project state or commit message before allowing commit to go through
