import java.util.*;

import java.io.File;
public class p4
{
	static int gcd(int a, int b)
	{
		int gcd=1;
		int k;
		if(a>b)
			k=b;
		else
			k=a;

		for(int i = 2; i<=k; i++)
			if(a%i==0 && b%i==0)
				gcd=i;
		return gcd;


	}

	public static void main(String args[]) throws Exception 
	{
		File f1 = new File("input.txt");
		Scanner sc = new Scanner(f1);
		int a=sc.nextInt();
		int b=sc.nextInt();
		int count = 0;
		int  output=0;

		p4 p = new p4();
		for(int i=2; i<= (a+b); i++)
		{

			if(i%2==0)
			{
				for(int j=i-1; j>=1; j--)
				{
					if(i==(a+b) && j==a)
					{	output = count +1;
						break;
					}
					if(p4.gcd(j,i-j)==1)
					{
						count++;
						
					}

				}
			}


			else
			{
				for(int j=1; j<=i-1; j++)
				{
					if(i==(a+b) && j==a)
					{	output = count +1;
						break;
					}
					if(p4.gcd(j,i-j)==1)
					{
						count++;
						
					}

				}
			}
		}

		System.out.println(output);
	}
}

