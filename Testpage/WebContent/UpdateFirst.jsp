<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head><meta name="viewport" content="width=device-width,initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stylesheets/style.css">
<link rel="stylesheet" href="stylesheets/styleresponsive.css">
<!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!-- Favicons
================================================== -->

</head>
<body>
	
		
				<div class="logo"><img src="images/alfa-soft.png"/ style="padding:30px 0px 0px 20px" ></div>
				<span class="subheader"><b>Our Key To Success</b></span>
				
			
		
				<div class="menu" style="float:right;padding:0px 50px 0px 0px">
				<nav>
				<ul class="nav nav-pills" id="nv" >
			
		       <li id="menu" class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown">Update Employee<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="AddEmployee.html">Add Employee</a></li>
						<li class="divider"></li>
						
					
						<li><a href="DeleteFirst.jsp">Remove Employee</a></li>
					</ul>
				</li>
				
				
				<li class="dropdown" id="menu">
				<a href="" class="dropdown-toggle" data-toggle="dropdown">Manage Salary<span class="caret"></span></a>
				</li>
				
				<li id="menu" class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown">Manage Leaves<span class="caret"></span></a>
				
                </li>
				
				<li id="menu" class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown">Manage Departsments<span class="caret"></span></a>
				</li>
				<li><a href="ShowEmployee.jsp">View Employees</a></li>
		
				<li><a href="HomePage.html">Logout</a></li>
				
			</ul>
			
				</nav>
			</div>

<%
Connection con;
Statement st;
ResultSet rs;
String id=request.getParameter("id");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	//out.print("Driver loaded");
}
catch(Exception e)
{
out.print(e);	
}
%>

<table border="1" cellspacing=10 cellpadding=10>
<tr>
<td>Id</td>
<td>Name</td>
<td>Mobile Number</td>

<td>Address</td>
<td>Date Of Joining</td>
<td>Gender</td>
<td>PAN Number</td>
<td>Department</td>
<td>Designation</td>
<td>Bank Name</td>
<td>Bank Account Number</td>
<td>Email_Id</td>
<td>Password</td>
</tr>

<%
try
{
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Akshada","root","root");
	//out.print("connection done");
	st=con.createStatement();
	String sql="select * from AddEmployee";
	rs=st.executeQuery(sql);
	while(rs.next())
	{
		%>
		
		<tr>
		<td><%= rs.getInt("id")%>
		</td>
		<td><%= rs.getString("name")%>
		</td>
		<td><%= rs.getString("mobile")%>
		</td>
		<td><%= rs.getString("address")%></td>
		<td><%= rs.getString("doj")%></td>
		<td><%= rs.getString("gender")%></td>
		<td><%= rs.getString("pan")%></td>
		<td><%= rs.getString("dname")%></td>
		<td><%= rs.getString("designation")%></td>
		<td><%= rs.getString("bank")%></td>
		<td><%= rs.getString("acnumber")%></td>
		<td><%= rs.getString("email")%></td>
		<td><%= rs.getString("password")%></td>
		<td><a href="UpdateSecond.jsp?id=<%= rs.getInt("id") %>">Update</a></td>
		
		</tr>
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