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
String price=(String)request.getParameter("price");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("driver loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Akshada","root","root");
	out.println("connection done!!!!");
	sql="update book set name=?,price=? where id="+id;
	ps=con.prepareStatement(sql);
	ps.setString(1,name);
	ps.setString(2,price);
	int i=ps.executeUpdate();
	if(i>0)
	{
		out.print("success");
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