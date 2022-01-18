package login;

import java.util.*;

//import manage.Stinsert;
//import manage.student;
public class loginmain {

	public static void main(String args[])
	{
		System.out.println("Hello User, press 1 to login or 2 to sign up");
		
		 @SuppressWarnings("resource")
		Scanner sc = new Scanner(System.in);
			int ch = sc.nextInt();
			switch (ch)
			{
			case 1: 
				sellogin.login();
				break;
			case 2:
				selsignup.signup();
				break;
			default: 
				System.out.print("Wrong Choice");
			}
			//student st = new student(sname, sph);
			//Stinsert.insertStudentToDB(st);
		
		System.out.println("Saved Successfully");
		
		
		
		
		
		
		
	}
}
