#!/bin/bash

REPOS="documents/classes
documents/nbloomf.md
documents/nbloomf.github.io
code/feivel
code/munge
fvl.lib/kreb-scout"

changes=0
pushes=0

for repo in $REPOS
do
  if [[ -n $(cd "$repo"; git status -s) ]];
    then
      echo -e "\033[1;33mUncommitted changes in $repo\033[0m"
      changes=1;
    else
      if [[ -n $(cd "$repo"; git cherry) ]];
        then
          echo -e "\033[1;31mUnpushed commits in $repo\033[0m"
          pushes=1;
      fi
  fi
done


if ((changes == 0)); then
  echo -e "\033[1;32mNo uncommitted changes\033[0m"
fi

if ((pushes == 0)); then
  echo -e "\033[1;32mNo unpushed commits\033[0m"
fi
