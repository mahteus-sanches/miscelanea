#!/bin/bash

# Ask for the commit message
read -p "Enter your commit message: " commit_message
echo "Debug: Commit message is '$commit_message'"
# Add all changes
git add --all
echo "added"
# Commit with the provided message
git commit -m "$commit_message"
echo "commited"
# Push to the origin main
git push origin main
echo "pushed"
# Notify the user
echo "Changes pushed to origin main."
