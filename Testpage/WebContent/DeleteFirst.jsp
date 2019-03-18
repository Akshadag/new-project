
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="wrapnav">
	<div class="container">
		<div class="three columns alpha">
			<div id="top" style="display:inline;">
				<div class="logo"><img src="images/alfa-soft.png"/></div>
				<br/><span class="subheader"><b>Our Key To Success</b></span>
				
			</div>
		</div>
		<div class="thirteen columns omega">
			<div class="menu">
				<nav>
				<ul class="nav nav-pills" id="nv" >
			
		       <li id="menu" class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown">Update Employee<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="AddEmployee.html">Add Employee</a></li>
						<li class="divider"></li>
						<li><a href="AddEmployee.html">Update Employee</a></li>
						<li class="divider"></li>
						<li><a href="">Remove Employee</a></li>
					</ul>
				</li>
				
				
				<li class="dropdown" id="menu">
				<a href="" class="dropdown-toggle" data-toggle="dropdown">Manage Salary<span class="caret"></span></a>
				</li>
				
				<li id="menu" class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown">Manage Leaves<span class="caret"></span></a>
				
                </li>
				
				<li id="menu" class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown">Manage Departsments<span class="caret"></span></a>
				</li>
				
				<li id="menu" class="dropdown"><a href="AdminNewHome.html">Home</a>
				</li>
				
			</ul>
			
				</nav>
			</div>
			
		</div>
	</div>
</div>

<br><br><br><br><br><br>
<form action="DeleteFirst.jsp">
<div class="container">
<form>
		
		<div class="form-group">
		<label><h3>Enter Id To Remove</h3></label>
		<input type="text" name="id" class="form-control text">
		</div>
		</form>
		<div class="form-group">
		<input type="submit" value="Submit" class="btn btn-primary" id="btn"> 
		<input type="reset" value="Reset" class="btn btn-primary"id="btn">
		
		</div>
		</div>
		</form>
		
		
<%

Connection con;
PreparedStatement ps;
ResultSet rs;
String sql;
String id=request.getParameter("id");

try
{

	Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Akshada","root","root");

sql="delete from AddEmployee where id="+id;
ps=con.prepareStatement(sql);


int a=ps.executeUpdate();
if(a>0)
{
response.sendRedirect("UpdateFirst.jsp");
}
else
{
	
}
}
catch(Exception e)
{
System.out.println(e);	
}






%>
</body>
</html>