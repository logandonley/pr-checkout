#!/bin/bash
if [ -z "$1" ]
  then
    echo "Needs to be in the form of 'mrc <remote> <mr #>'"
    exit 1
fi
if [ -z "$2" ]
  then
    echo "Needs to be in the form of 'mrc <remote> <mr #>'"
    exit 1
fi
git fetch $1 merge-requests/$2/head:mr-$2
git checkout mr-$2

