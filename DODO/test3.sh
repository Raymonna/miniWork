#! /bin/sh

var=1

for i in `seq 3`
do
	var=`expr $var + 1 `
done

echo $var
