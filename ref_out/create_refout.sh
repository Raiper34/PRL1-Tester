#!/bin/bash
g++ -o refout_creator refout_creator.cpp
for (( n=1; n<=26; n++ ))
do
./refout_creator $n ../in/input$n > ref_out$n
done
