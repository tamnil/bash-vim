#!/bin/bash

echo "compile ctags to .git/tags folder"
### read key:
read -p "Are you sure?[n]" -n 1 -r
echo "on $PWD"
if [[ $REPLY =~ ^[Yy]$ ]]
    then
ctags -R -f ./.git/tags --tag-relative=yes
    else
        echo "Aborted"
fi


