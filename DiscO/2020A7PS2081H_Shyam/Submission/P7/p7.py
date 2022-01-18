
import numpy as np
M = np.loadtxt("input.txt", skiprows=1, dtype='int')
print(M)

A=np.copy(M)
B=np.copy(A)
n=len(M)
print(n)
for i in range (1,n):
	A=np.copy(A@M)
	for p in range(0,n):
		for j in range(0,n):
			if((A[p,j])>1):
				A[p,j]=1
	B=np.copy((np.bitwise_or(B,A)))
for i in range(0,n):
	for j in range(0,n):

		print(B[i,j],end='')
		if(j!=n-1):
			print("$",end='')
	if(i!=n-1):
		print("$$",end='')