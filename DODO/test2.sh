#! /bin/sh
num=0
:<<COMMENT
for filename in ./crop/*gz  
do 
	if   ! grep -r --include="bin01fold*.json" $filename ./ ; then
		echo "do not found"
		num=`expr $num + 1 `
	fi

done
COMMENT
if ! grep -r --include="bin01fold*.json" IM_NP0673.nii.gz ./ ;
then

echo $num files in the test.json
fi
