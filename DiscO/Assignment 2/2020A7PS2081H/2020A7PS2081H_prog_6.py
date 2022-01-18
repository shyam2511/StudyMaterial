import numpy as np
M = np.loadtxt("input.txt", skiprows=1, dtype='int')

n=len(M)
w=[]
ini=[]
fin=[]
msti=[]
mstf=[]
mstw=[]
for i in range(n):
	for j in range(n):
		if(M[i,j]!=0):
			ini.append(i+1)
			fin.append(j+1)
			w.append(M[i,j])
q1 = np.column_stack((w, ini, fin))

mup = q1[np.argsort(q1[:, 0])]

c = np.shape(mup)[0]

for i in range(c):
    flag=0
    for j in range(len(mstf)):
        if(mup[i,1]==mstf[j]):
            for k in range(len(mstf)):
                if(mup[i,2]==msti[k]):
                    flag=1
    if(flag==0):
        mstw.append(mup[i,0])
        msti.append(mup[i,1])
        mstf.append(mup[i,2])
sum=0
for i in range(n-1):
    sum = sum + mstw[i]
print(sum)
        
    