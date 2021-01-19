import sys
import fileinput

for line in fileinput.input(sys.argv[1:]):
    lineArgs = line.strip()
    lineArgs = lineArgs.replace(" ","")
    a = int(lineArgs[0])
    b = int(lineArgs[1])

def add(a, b):
    sum = a + b
    print ("Sum of {} + {} = {}".format(a , b , sum))

if __name__ == "__main__":
    add(a , b)
