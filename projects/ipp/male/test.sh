#!/bin/bash

for test_name in $2/*.in
do
    ./$1 < $test_name 1> result.out 2> result.err
    echo "$test_name :"
	if ! diff result.out ${test_name%in}out >/dev/null 2>&1
	then
		echo "out wrong"
	else 
		echo "out ok"
	fi


	if ! diff result.err ${test_name%in}err >/dev/null 2>&1
	then
		echo "err wrong"
	else 
		echo "err ok"
	fi

done

rm result.out
rm result.err
