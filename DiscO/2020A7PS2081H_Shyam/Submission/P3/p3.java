import java.util.*;

import java.io.File;
public class p3

{
	
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
		
		int oo[] = new int[n];
		
		for ( int i = 0; i < n; i ++)
		{

			for (int j=0; j<n;j++)
			{
				oo[i] += a[j][i];
			}
		}

		int flag = 1;
		for (int i=0; i<n; i++)
		{
			if(oo[i]>=2)
				flag=0;
		}

		System.out.print(flag);

		int b[]=new int[n];

		for ( int j = 0; j < n; j ++)
		{
			
			for (int i=0; i<n;i++)
			{
				if(a[i][j]==1)
				{
					b[j]=1;
					break;
				}
			}
		}

		int flag3=1;
		for(int i=0;i<n;i++)
		{
			if(b[i]==0)
			{
				flag3=0;
			}

		}
		System.out.print(flag3);



	}
}
