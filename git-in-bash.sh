#!/bin/bash
# Bash Help Script

# ========================================================
# VARIABLES
# ========================================================
NAME="Brendan"
AGE=100
echo "Hello, my name is $NAME and I am $AGE years old!"

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

