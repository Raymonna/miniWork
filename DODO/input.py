import sys

if (len(sys.argv) == 1):
    print("no input")
else:
    print ("first argv is ", sys.argv[1])


for i in sys.argv:
    print( i)
x = input()
print(x)
