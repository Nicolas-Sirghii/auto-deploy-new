#!/bin/bash

# Go to project folder
cd /home/nicolas_mailbox100/auto-deploy-new

# Force sync with GitHub (discard any local changes)
git fetch origin
git reset --hard origin/main
git clean -fd

# Save last commit info for verification
git log -1 --oneline > last-commit.txt