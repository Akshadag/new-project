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
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
<style>

</style>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String st=session.getAttribute("str").toString();
out.print("<center><h3>Welcome</h3></center><br>");
out.print("<center><h3>"+st+"</h3></center>");
%>
<div class="logo"><img src="images/alfa-soft.png" style="padding:20px 0px 0px 50px" ></div>
				<span class="subheader" style="padding:20px 0px 0px 50px"><b>Our Key To Success</b></span>
				

		
				<div class="menu" style="float:right;padding:0px 50px 0px 0px">
				<nav>
				<ul class="nav nav-pills" id="nv" >
			
				<li><a href=".jsp"> SALARY DETAILS </a></li>
				<li><a href="ApplyLeaves.html"> APPLY LEAVES </a></li>
				<li><a href=""> APPLIED LEAVES </a></li>
				<li><a href="changepassemployee.html"> CHANGE PASSWORD </a></li>
				<li><a href="HomePage.html"> LOGOUT </a></li>
				
				
			</ul>
			
				</nav>
			</div>
			
<div class="container" style="width:100%; height:100%;">
<img src="images/offshore-development.jpeg" class="img" style="width:100%; height:100%"/>
</div>


</body>
</html>