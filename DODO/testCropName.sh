#! /bin/sh
:<<COMMENT
for name in ./cropName.txt
do
	echo ${name##*/}
done
COMMENT
touch cropName2.txt
while read -r line; do
	echo ${line##*/} >> cropName2.txt
done < cropName.txt
