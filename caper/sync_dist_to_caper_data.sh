#!/bin/bash

LAST_COMMIT_HASH=$(git rev-list HEAD | head -n1)
touch "../dist/last_git_commit_${LAST_COMMIT_HASH}"

aws s3 sync ../dist/ s3://caper-aws-genomics-workflows

