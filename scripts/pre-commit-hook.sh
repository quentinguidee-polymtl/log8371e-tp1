#!/bin/sh

exec < /dev/tty

echo "Before you proceed with this commit, make sure you have checked the dependency matrix for the code you are committing."
read -p "I confirm that there are no unwanted dependencies in my code? [y/n] " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
    exit 0
else
    echo "Commit aborted."
    exit 1
fi
