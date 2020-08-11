#! /bin/sh
res=0
for num in $@
do
	$res=0
	for i in `seq 5`
	do
		while read line; do
			$res=`expr res + line `
		done
				
	done
	echo training$num is $res
done	
