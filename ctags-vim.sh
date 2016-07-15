#!/bin/bash

echo "#####Compile ctags to .git/tags folder#####"
echo ""
echo "COMMAND: ctags -R -f ./.git/tags --tag-relative=yes "
echo "on $PWD"
read -p "Are you sure?[n]" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
    then
ctags -R -f ./.git/tags --tag-relative=yes
    else
        echo "Aborted"
fi


