#!/bin/bash

if [ -z "$1" ]
then
    echo "Commit param is empty (1)"
    exit 1
fi

if [ -z "$2" ]
then
    echo "New commit date is empty (2)"
    exit 1
fi

git rebase -i "${1}^"
GIT_COMMITTER_DATE="${2}" git commit --amend --no-edit --date="${2}" --no-verify
git rebase --continue
