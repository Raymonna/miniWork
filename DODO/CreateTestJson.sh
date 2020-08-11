#! /bin/sh

{
echo"{
    "label_format": [
        1,
        1
    ],
    "training": [
        {
            "image": "IM_LD0136.nii.gz",
            "mask": "IM_LD0136_label.nii.gz",
            "label": [
                1,
                0
            ]
        },
        {
            "image": "IM_LD0010.nii.gz",
            "mask": "IM_LD0010_label.nii.gz",
            "label": [
                1,
                0
            ]
        }
     ] 
     "validation": [
     	{
	   "image": "IM_LD0136.nii.gz",
            "mask": "IM_LD0136_label.nii.gz",
            "label": [
                1,
                0
            ]
	}
      ]
      }
	"	
} >> your_file.txt
