import numpy as np

def search(q,post,dt,var):
    temp = q
    res = []
    for i in temp:
        if i in dt:
            r = dt.index(i)
            temp = []
            for j in range(len(var)):
                if post[r][j] == 1:
                    temp.append(j)
            res.append(temp)
            print('iteration completed')
    return res


a = " breakthrough drug for schizophrenia "
b = " new schizophrenia drug "
c = " new approach for treatment of schizophrenia"
d = " new hopes for schizophrenia patients"

var = [a,b,c,d]
di = []
dict1 = []

for i in var:
    di = [k for k in i.split() ]
    dict1+=di

dict1.sort()

print(dict1)

post = np.zeros([len(dict1),len(var)],dtype=int)

for i in range(len(dict1)):
    for j in range(len(var)):
        if dict1[i] in var[j]:
            post[i][j] = 1
print(post)

#query = [( i for i in input("enter the query : ").strip().split() )]

query = " drug patient"

t = [ i for i in query.split()]
print(t)

res = search(t,post,dict1,var)

for i in range(len(res)):
    for j in range(len(res[i])):
        print(var[(res[i][j])])
