package manage;
import java.sql.Connection;
import java.sql.DriverManager;
public class cp {
	
	static Connection con;
	
	public static Connection createc()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String user = "root";
			String password = "root";
			String url = "jdbc:mysql://localhost:3306/project?autoReconnect=true&useSSL=false";
			
			con = DriverManager.getConnection(url, user, password);
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
	    }
		return con;
	}
	
	
}
