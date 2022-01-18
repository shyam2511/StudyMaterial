package manage;
import java.sql.Connection;

import java.sql.Statement;

public class Stinsert {

		public static void insertStudentToDB(student st)
		{
			
			try {
				
				Connection con = cp.createc();
				
				String q = "insert into students(sname, sphone) values('"+st.getStudentName()+"','"+st.getStudentPhone()+"')";
				
				Statement stmt = con.createStatement();
				stmt.executeUpdate(q);
				//stmt.setString(1,st.getStudentName());
				//stmt.setString(2,st.getStudentPhone());
				
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			
		}
	

}
