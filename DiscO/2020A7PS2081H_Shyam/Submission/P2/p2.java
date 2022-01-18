import java.util.*;

import java.io.File;
public class p2

{
	static int func(int n)
	{
		if(n==0||n==1||n==2)
			return n;
		else
			return (func(n-1)+func(n-2));
	}
	public static void main(String args[]) throws Exception 
	{
		File f1 = new File("input.txt");
		Scanner sc = new Scanner(f1);
		int n=sc.nextInt();
		p2 p = new p2();

		System.out.println(p2.func(n));
	}
}

