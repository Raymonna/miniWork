#剖析json array
import json
import random 
input_file = open ('datalist.json')
json_array = json.load(input_file)

#random.shuffle(json_array)
i = 0
j = 0
k = 0
for item in json_array:
    print(item)
for item in json_array["training"]:
    if i == 0:
        print(item)
    i+=1
for item in json_array["test"]:
    j+=1
for item in json_array["validation"]:
    k+=1
print(i, j, k)
