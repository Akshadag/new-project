<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
Connection con;
PreparedStatement ps;
ResultSet rs;
String sql;
String id=(String)request.getParameter("id");
String name=(String)request.getParameter("name");
String mobilenumber=(String)request.getParameter("mobilenumber");
String address=(String)request.getParameter("address");
String doj=(String)request.getParameter("doj");
String gender=(String)request.getParameter("gender");
String pan=(String)request.getParameter("pan");
String department=(String)request.getParameter("department");
String designation=(String)request.getParameter("designation");
String bank=(String)request.getParameter("bank");
String accno=(String)request.getParameter("accno");
String email=(String)request.getParameter("email");
String password=(String)request.getParameter("password");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("driver loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Akshada","root","root");
	out.println("connection done!!!!");
	sql="update AddEmployee set name=?,mobile=?,address=?,doj=?,gender=?,pan=?,dname=?,designation=?,bank=?,acnumber=?,email=?,password=? where id="+id;
	ps=con.prepareStatement(sql);
	ps.setString(1,name);
	ps.setString(2,mobilenumber);
	ps.setString(3,address);
	ps.setString(4,doj);
	ps.setString(5,gender);
	ps.setString(6,pan);
	ps.setString(7,department);
	ps.setString(8,designation);
	ps.setString(9,bank);
	ps.setString(10,accno);
	ps.setString(11,email);
	ps.setString(12,password);

	int i=ps.executeUpdate();
	if(i>0)
	{
		out.print("success");
		response.sendRedirect("UpdateFirst.jsp");
	}
	else
	{
		out.print("not");
	}
}
catch(Exception e)
{
out.print(e);	
}
%>
</body>
</html>