#!/bin/bash

printf "List location(full path):"
read FILE

while read line; 
do
    sudo pacman --noconfirm -Rns $line
done < $FILE
