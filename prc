#!/bin/bash
if [ -z "$1" ]
  then
    echo "Needs to be in the form of 'prc <remote> <pr #>'"
    exit 1
fi
if [ -z "$2" ]
  then
    echo "Needs to be in the form of 'prc <remote> <pr #>'"
    exit 1
fi
git fetch $1 pull/$2/head:pr-$2
git checkout pr-$2
