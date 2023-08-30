import numpy as np
import pandas as pd

n = int(input(" enter no of documents "))  
var = []
dict1 = []

def printpost(var,dict1,post):
    print("Term Document Incidence Matrix:")
    for i in range(len(dict1)):
        print('{: <15}'.format(dict1[i]), end='')
        for j in range(len(var)):
            if dict1[i] in var[j]:
                post[i][j] = 1
            print(post[i][j], end=" ")
        print()


for i in range(n):
    d = input(f"enter document {i}: ")
    var.append(d)
    d = [i for i in d.strip().split()]
    dict1+=d

dict1=np.unique(dict1)

post = np.zeros([len(dict1),len(var)],dtype=int)

for i in range(len(dict1)):
    for j in range(len(var)):
        if dict1[i] in var[j]:
            post[i][j] = 1

di = {}

for i in range(len(dict1)):
    di[dict1[i]] = post[i]
    
printpost(var,dict1,post)

    