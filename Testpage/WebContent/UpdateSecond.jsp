<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
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
<%
Connection con;
PreparedStatement ps;
ResultSet rs;
String sql;
Statement st;
String id=(String)request.getParameter("id");
try
{

	Class.forName("com.mysql.jdbc.Driver");
//System.out.println("driver loaded");
}
catch(Exception e)
{
out.print(e);	
}
%>
<%
try
{
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Akshada","root","root");
//out.println("connection done!!!!");
st=con.createStatement();
sql="select* from AddEmployee where id="+id;
rs=st.executeQuery(sql);
while(rs.next())
{
%>
	

<!--  <form name="f1" method="get" action="UpdateFinal.jsp">
<table border=1>

<tr><td>Id</td><td><input type="text" name="id" value=<%= id %>></td></tr>
<tr><td>Name</td><td><input type="text" name="name" value="<%= rs.getString("name") %>"></td></tr>
<tr><td>Mobile Number</td><td><input type="text" name="mobilenumber" value="<%= rs.getString("mobile") %>"></td></tr>
<tr><td>Address</td><td><input type="text" name="address" value="<%= rs.getString("address") %>"></td></tr>
<tr><td>Date Of Joining</td><td><input type="date" name="doj" value="<%= rs.getString("doj") %>"></td></tr>
<tr><td>Gender</td><td><input type="text" name="gender" value="<%= rs.getString("gender") %>"></td></tr>
<tr><td>Pan Number</td><td><input type="text" name="pan" value="<%= rs.getString("pan") %>"></td></tr>
<tr><td>Department Name</td><td><input type="text" name="department" value="<%= rs.getString("dname") %>"></td></tr>
<tr><td>Designation</td><td><input type="text" name="designation" value="<%= rs.getString("designation") %>"></td></tr>
<tr><td>Bank Name</td><td><input type="text" name="bank" value="<%= rs.getString("bank") %>"></td></tr>
<tr><td>Bank Account Number</td><td><input type="text" name="accno" value="<%= rs.getString("acnumber") %>"></td></tr>
<tr><td>Email_Id</td><td><input type="text" name="email" value="<%= rs.getString("email") %>"></td></tr>
<tr><td>Password</td><td><input type="text" name="password" value="<%= rs.getString("password") %>"></td></tr>
<tr><td><input type="submit" value="Update"></td></tr>
</table>
</form>-->

<div id="wrapnav">
	<div class="container">
		<div class="three columns alpha">
			<div id="top" style="display:inline;">
				<div class="logo"><img src="images/alfa-soft.png"/></div>
				<br/><span class="subheader"><b>Our Key To Success</b></span>
				
			</div>
		</div><br><br><br><br>

<div class="container">

	
		<center><b class="register"><h2><u>Update Employee</u></h2></b></center><br><br><br>
		
		<form name="f1" method="get" action="UpdateFinal.jsp">
		<div class="form-group">
		<label><h3>Id</h3></label>
		<input type="text" name="id" class="form-control text"  value="<%= id %>">
		</div>
		
		<div class="form-group">
		<label><h3>Full Name</h3></label>
		<input type="text" name="name" class="form-control text"  value="<%= rs.getString("name") %>">
		</div>
		
		
		<div class="form-group">
		<label><h3>Mobile Number</h3></label>
		<input type="number" name="mobilenumber" class="form-control text" value="<%= rs.getString("mobile") %>">
		</div>
		
		<div class="form-group">
		<label><h3>Address</h3></label>
		<input type="text" name="address" class="form-control" rows="5"  value="<%= rs.getString("address") %>">
		</div>
		
		<div class="form-group">
		<label><h3>Date Of Joining</h3></label>
		<input type="text" name="doj" class="form-control text" value="<%= rs.getString("doj") %>">
		</div>
		
		<div class="form-group">
		<label><h3>Gender</h3></label>
		<input type="text" name="gender" value="<%= rs.getString("gender") %>">
		
		</div>
		
		<div class="form-group">
		<label><h3>PAN Number</h3></label>
		<input type="text" name="pan" class="form-control text" value="<%= rs.getString("pan") %>">
		</div>
		
		<div class="form-group">
		<label><h3>Department Name</h3></label>
		<input type="text" name="department" value="<%= rs.getString("dname") %>">
		
		</div>
		
		<div class="form-group">
		<label><h3>Designation</h3></label>
		<input type="text" name="designation" value="<%= rs.getString("designation") %>">
		
		</div>
		
		
		<div class="form-group">
		<label><h3>Bank Name</h3></label>
		<input type="text" name="bank" class="form-control text" value="<%= rs.getString("bank") %>">
		</div>
		
		<div class="form-group">
		<label><h3>Bank Account Number</h3></label>
		<input type="number" name="accno" class="form-control text" value="<%= rs.getString("acnumber") %>">
		</div>
		

		<div class="form-group">
		<label><h3>Email Id</h3></label>
		<input type="email" name="email" class="form-control text" value="<%= rs.getString("email") %>">
		</div>

		<div class="form-group">
		<label><h3>Password</h3></label>
		<input type="text" name="password" class="form-control text" value="<%= rs.getString("password") %>">
		</div>
		
		<div class="form-group">
		<input type="submit" value="Update" class="btn btn-primary" id="btn"> 
		<input type="reset" value="Reset" class="btn btn-primary"id="btn">
		
		</div>
		</form>
		</div>
		</div>
</div>
</form>
<%
}
}
catch(Exception e)
{
out.print(e);	
}

%>

</body>
</html>