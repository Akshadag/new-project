package pkg;
import java.sql.*;

import javax.servlet.http.HttpSession;


public class Velidate 
{
	public static boolean CheckLogin(String name,String pass)
	{
		
	boolean st=false;
	
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("driver loaded");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AlfaSoft","root","root");
		System.out.println("connection done!!!!");	
		PreparedStatement ps=con.prepareStatement("Select * from AddEmployee where name=? and password=?");
	ps.setString(1,name);
	ps.setString(2,pass);
	ResultSet rs=ps.executeQuery();
	st=rs.next();
	
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	return st;
	}


}
