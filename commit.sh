#!/bin/bash

now="$(date +'%F %R')"
echo $now

if [ -z "$1" ]
then 
    if [[ "$(git status --porcelain --untracked-files=no)" ]]; then
        git commit . -m "General Commit | $now"
        git push
    else 
        printf "Ficheiros estão atualizados.\n(Nothing to commit)\n"
    fi
else
    if [[ "$(git status --porcelain --untracked-files=no)" ]]; then
        git commit . -m "$1 | $now"
        git push
    else 
        printf "Ficheiros estão atualizados.\n(Nothing to commit)\n"
    fi
fi
