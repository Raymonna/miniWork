#! /bin/sh
sum=0
for num in $@
do
	for i in `seq 5`
	do
		tmp=$sum
		sum=$(cat "./models"$num"_"$i"/Average_AUC")
		echo -n "$sum "


	done
	echo 
	sum=0
done

