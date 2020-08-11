import json


data = {}
#'label_format', 'training', 'validation', 'test'
data["label_format"] = [1, 1]
data["training"] = []
data["validation"] = []
data["test"] = []

import pandas as pd


health_txt = pd.read_table("testHealth.txt", header = None)

tumor_txt = pd.read_table("testTumor.txt", header = None)

#for i in range(len(health_txt[0])):
#    data['validation'].append({"image":health_txt[0][i], "mask":health_txt[]})


def Add(txt, label):
    for i in range(len(txt[0])):
        data['validation'].append({"image":txt[0][i], "mask": txt[0][i][:-7]+"_label"+txt[0][i][-7:], "label" : label})

Add(health_txt, [1, 0])
Add(tumor_txt, [0, 1])


import json

ret = json.dumps(data)
fp = open("mytest.json", 'w')
fp.write(ret)


'''
with open('bin01fold_1.json', 'r') as read_file:
    dict_data = json.load(read_file)

    # list all keys
    print('dict_data.keys = ', dict_data.keys())
    keys = dict_data.keys()
    print(dict_data[keys[0]])

'''
'''
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
'''
