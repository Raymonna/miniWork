#! /bin/sh

num=0
rm testHealth.txt
rm testTumor.txt
touch testHealth.txt
touch testTumor.txt

for f in ./crop/* 
do
	file=${f##*/}	
	var=$(grep -i $file namefor5.txt |wc -l)
	if [[ $var != 4 ]] && [[ $file != *"AP"* ]] && [[ $file != *"CP"* ]] && [[ $file != *"CY"* ]] && [[ $file != *"NE"* ]]; then 
		if [[ $file == *"label"* ]]; then 
			continue
		fi
		if [[ $file == *"PC"* ]] || [[ $file == *"PT"* ]]; then
			echo $file >> testTumor.txt
		else
			echo $file >> testHealth.txt
		fi
		echo $file
		num=`expr $num + 1 `
	fi
done
echo exist $num files in test.sh
#"image": "IM_LD0136.nii.gz",
#            "mask": "IM_LD0136_label.nii.gz",
