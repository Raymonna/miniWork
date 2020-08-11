#! /bin/sh

var="there is no reason to stop"

if [[ $var == *"on"* ]] && [[ $var == *"rea"* ]] ; then 
	echo rea exit!
fi
if [[  $var != *"reass"* ]]; then 
	echo reass doesn\'t exit
fi
rm namefor5.txt
touch namefor5.txt
for i in $(seq 1 1 5 )
do
					     
	while read -r line; do
		#echo $line
		if [[ $line == *"gz"* ]]; then 
			var2=${line#*\"}
			var2=${var2#*\"}
			var2=${var2#*\"}
			var2=${var2%\"*}
			echo $var2 >> namefor5.txt
		fi
		if [[ $line == *"test"* ]] || [[ $line == *"validation"* ]]; then 
			break
		fi
	done < "bin01fold_"$i".json"
done
