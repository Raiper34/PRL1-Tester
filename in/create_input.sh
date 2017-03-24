#!/bin/bash
for (( n=1; n<=26; n++ ))
do
dd if=/dev/random bs=1 count=$n of=input$n
done
