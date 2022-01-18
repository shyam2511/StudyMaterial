import java.util.*;

import java.io.File;
public class p6
{
	public static int[][] matrixMultiplication(int[][] a, int[][] b) 
	{
    int n = a.length;
    int[][] res = new int[n][n];
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        for (int k = 0; k < n; k++) {
          res[i][j] += a[i][k] * b[k][j];
        }
      }
    }
    return res;
    }

	
	public static void main(String args[]) throws Exception 
	{
		File f1 = new File("input.txt");
		Scanner sc = new Scanner(f1);
		int n=sc.nextInt();

		int a[][] = new int[n][n];

		for ( int i = 0; i < n; i ++)
		{
			for (int j=0; j<n;j++)
			{

				a[i][j]= sc.nextInt();



			}
		}
		int flag = 1;
		for(int i=0; i<n; i++)
		{
			for(int j=0; j<n;j++)
			{
				if(i==j)
					continue;
				if(a[i][j]==a[j][i])
					flag=0;
			}
		}
		System.out.print(flag);
		p6 obj = new p6();
		int mult[][] = p6.matrixMultiplication(a,a);
		flag=1;

		for(int i=0; i<n; i++)
		{
			for(int j=0; j<n;j++)
			{
				if(mult[i][j]!=0)
					if(a[i][j]!=1)
						flag=1;
			}
		}

		System.out.print(flag);
	}
}

