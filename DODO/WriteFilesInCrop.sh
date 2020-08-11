#! /bin/sh

touch cropName.txt

for file in ./crop/* 
do
	echo $file >> cropName.txt

done
