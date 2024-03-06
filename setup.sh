#!/usr/bin/env bash

pathToBashrc=~/.bashrc
fileToSourceInBashrc=source_in_bashrc.sh
currentDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if grep -q "source $currentDir/$fileToSourceInBashrc" $pathToBashrc; then
  echo \"source $currentDir/$fileToSourceInBashrc\" is already in bashrc, no need to do anything
else
  echo Appending \"source $currentDir/$fileToSourceInBashrc\" to the end of $pathToBashrc
  echo source $currentDir/$fileToSourceInBashrc >> $pathToBashrc
fi
