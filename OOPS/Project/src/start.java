import java.io.IOException;
import java.util.*;

import manage.Stinsert;
import manage.student;
public class start {

	public static void main(String args[]) throws IOException
	{
		System.out.println("Hello world");
		
		 @SuppressWarnings("resource")
		Scanner sc = new Scanner(System.in);
			System.out.println("Enter Student name");
			String sname = sc.nextLine();
			
			System.out.println("Enter Student phone");
			
			String sph = sc.nextLine();
			
			student st = new student(sname, sph);
			Stinsert.insertStudentToDB(st);
		
		System.out.println("Saved Successfully");
		
		
		
		
		
		
		
	}
}
