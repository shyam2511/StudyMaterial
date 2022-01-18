import numpy as np
M = np.loadtxt("input.txt", skiprows=1, dtype='int')
n = len(M)
for i in range(0,n):
		count=0;
		for j in range (0,n):
			if(M[j,i]==1):
				count=count+1
		
		if(count==0):
			print(i+1,"$",sep="",end="")
			
for p in range(0,n):
	for i in range(0,n):
		count=0;
		for j in range (0,n):
			if(M[j,i]==1):
				count=count+1
		
		if(count==1):
			print(i+1,"$",sep="",end="")
			
			M[i]=np.zeros(n,dtype = int)
			M[:,i]=np.zeros((1,n),dtype = int)
			break
