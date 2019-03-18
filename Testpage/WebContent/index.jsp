i<%@page import="java.sql.*"%>
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
Statement st;
ResultSet rs;
String id=request.getParameter("id");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	out.print("Driver loaded");
}
catch(Exception e)
{
out.print(e);	
}
%>

<table border="1">
<tr>
<td>Id</td>
<td>name</td>
<td>price</td>
</tr>

<%
try
{
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AlfaSoft","root","root");
	out.print("connection done");
	st=con.createStatement();
	String sql="select * from book";
	rs=st.executeQuery(sql);
	while(rs.next())
	{
		%>
		<tr>
		<td><%= rs.getInt("id")%>
		</td>
		<td><%= rs.getString("name")%>
		</td>
		<td><%= rs.getString("price")%></td>
		
		<td><a href="EditBook.jsp?id=<%= rs.getInt("id") %>">Update</a></td></tr>
		<%
	}
		con.close();
}catch(Exception e)
{
	
	out.print(e);
}
		%>

</table>
</form>
</body>
</html>