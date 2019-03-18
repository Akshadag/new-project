<%@page import="java.sql.*"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
String name1=request.getParameter("name");
String mnumber=request.getParameter("mobilenumber");
String add=request.getParameter("address");
String joining=request.getParameter("doj");
String gender=request.getParameter("gender");
String pan=request.getParameter("pan");
String department=request.getParameter("department");
String designation=request.getParameter("designation");
String bank=request.getParameter("bank");
String acnumber=request.getParameter("accno");
String email=request.getParameter("email");
String password=request.getParameter("password");

try
{

	Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Akshada","root","root");
out.println("connection done!!!!");
ps=con.prepareStatement("insert into AddEmployee values(0,?,?,?,?,?,?,?,?,?,?,?,?)");

ps.setString(1,name1);
ps.setString(2,mnumber);
ps.setString(3,add);
ps.setString(4,joining);
ps.setString(5,gender);
ps.setString(6,pan);
ps.setString(7,department);
ps.setString(8,designation);
ps.setString(9,bank);
ps.setString(10,acnumber);
ps.setString(11,email);
ps.setString(12,password);
int a=ps.executeUpdate();
}
catch(Exception e)
{
System.out.println(e);	
}



%>

</body>
</html>