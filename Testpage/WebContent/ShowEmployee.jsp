<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<style>
th,td
{
text-align:center;
height:20%;
width:20%;

}
table
{
height:100%;
width:100%;
}
</style>
</head>
<body>
<%
Connection con;
ResultSet rs;
Statement st;
String sql;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Akshada","root","root");
	st=con.createStatement();
	sql=("select * from AddEmployee");
	rs=st.executeQuery(sql);
	out.println("<center><table border=2 cellspacing=5 cellpadding=5><tr><th>Id</th><th>Name</th><th>Designation</th><th>Department</th><th>Email_Id</th></tr></table><center>");
	while(rs.next())
	{
		out.println("<center><table border=1 cellspacing=5 cellpadding=5><tr><td>"+rs.getInt("id")+"</td><td>"+rs.getString("name")+"</td><td>"+rs.getString("designation")+"</td><td>"+rs.getString("dname")+"</td><td>"+rs.getString("email")+"</td></tr></table><center>");
	}
	con.close();
	
}
catch(Exception e)
{
	
	out.print(e);
}

%>

</body>
</html>