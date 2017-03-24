#!/bin/bash
rm -rf es
mpic++ --prefix /usr/local/share/OpenMPI -o es es.cpp

for (( n=1; n<=26; n++ ))
do
	cp in/input$n numbers
	p=$((n + 1))
	mpirun --prefix /usr/local/share/OpenMPI -np $p es > out/out$n
	rm -rf numbers
	diff -u ref_out/ref_out$n out/out$n > diff/diff$n
	if [ $? = 0 ]
		then
			echo -e "\033[1;32mTest${n} PASS"
		else
			echo -e "\033[31mTest${n} FAIL"
		fi
		echo -e "\033[0m-----------"
done
