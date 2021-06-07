#!/bin/bash

git rev-list HEAD | head -n10 > ../dist/last_10_git_commit
aws s3 sync ../dist/ s3://caper-aws-genomics-workflows

