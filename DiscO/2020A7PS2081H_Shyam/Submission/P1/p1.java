import java.util.*;

import java.io.File;
public class p1
{
	 public static  List<Integer>  union(int[] a, int b[])
	{
		List <Integer> list = new ArrayList();
		for(int i = 0; i<b.length; i++)
		{
				list.add(b[i]);
		}
		for(int i = 0; i<a.length; i++)
		{
			int flag = 0;

			for (int j=0; j<list.size(); j++)
			{
				if(list.get(j)==(a[i]))
					flag=1;
			}
			if(flag==0)
				list.add(a[i]);
		}
		return list;
	}
	 public static  List<Integer>  intersection(int[] a, int b[])
	{
		List <Integer> list = new ArrayList();
		
		for(int i = 0; i<a.length; i++)
		{
			int flag = 0;

			for (int j=0; j<b.length; j++)
			{
				if(b[j]==(a[i]))
					flag=1;
			}
			if(flag==1)
				list.add(a[i]);
		}
		return list;
	}
	 public static  List<Integer>  difference(int[] a, int b[])
	{
		List <Integer> list = new ArrayList();
		
		for(int i = 0; i<a.length; i++)
		{
			int flag = 0;

			for (int j=0; j<b.length; j++)
			{
				if(b[j]==(a[i]))
					flag=1;
			}
			if(flag==0)
				list.add(a[i]);
		}
		return list;
	}
	public static void main(String args[]) throws Exception 
	{
		File f1 = new File("input.txt");
		Scanner sc = new Scanner(f1);
		int n1=sc.nextInt();
		int a[]=new int[n1];
		for ( int i = 0; i<n1 ; i++)
		{
			a[i]= sc.nextInt();

		}
		int n2=sc.nextInt();
		int b[]=new int[n2];
		for ( int i = 0; i<n2 ; i++)
		{
			b[i]= sc.nextInt();

		}
		p1 op = new p1();
		List <Integer> union = p1.union(a,b);
		List <Integer> inter = p1.intersection(a,b);
		List <Integer> diff = p1.difference(a,b);

		Collections.sort(union);
		Collections.sort(inter);
		Collections.sort(diff);

		for (int j=0; j<union.size(); j++)
		{

			System.out.print(union.get(j)+" ");
		
		}
		System.out.println();
		
	
		for (int j=0; j<inter.size(); j++)
		{

			System.out.print(inter.get(j)+" ");
		}
		
		System.out.println();
		
		for (int j=0; j<diff.size(); j++)
		{

			System.out.print(diff.get(j)+" ");
		}
		
		System.out.println();
		
	

	}
}