#!/usr/bin/python
# Just some parsing 
# toorandom@gmail.com
f = open('z.txt')

line = f.readline() 
while line:
    line_a  = line.split(',') 
    for i in range(1,len(line_a)):
        if line_a[0] != line_a[i].split(':')[1].strip():
            t = (line_a[i].split(':')[1].strip(), chr(int(line_a[0].strip(),16)), line_a[0].strip(),float(line_a[i].split(':')[0].strip()))
            print t[0]+","+t[1]+","+t[2]+","+str(t[3])
    line = f.readline()

f.close()
