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
ResultSet rs;
PreparedStatement ps;
String dropdown=request.getParameter("dropdown");
String from=request.getParameter("from");
String to=request.getParameter("to");
String description=request.getParameter("description");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	out.print("Driver loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Akshada","root","root");
	out.print("connection done");
	
	ps=con.prepareStatement("insert into ApplyLeaves values(0,?,?,?,?)");
	ps.setString(1,dropdown);
	ps.setString(2,from);
	ps.setString(3,to);
	ps.setString(4,description);
	int a=ps.executeUpdate();
	
}
catch(Exception e)
{
 out.print(e);
}


%>


</body>
</html>