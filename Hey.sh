#!/bin/bash

#./LoopCulturePage.sh $1 

count=6

while [ $count -ne 22 ]; do
   echo "Adresse: $1?p=$count est valide"
   ./LoopCulturePage.sh "$1?p=$count"
   let count=count+1 
done
