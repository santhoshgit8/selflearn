#!/bin/bash

counter=0

while [ $counter -lt  5 ]
do 
echo "looping..."
echo $counter

counter=$(( $counter  + 1 ))

done

echo "end of loop"
