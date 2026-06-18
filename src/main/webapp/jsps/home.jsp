<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MithunTechnologies- Home Page</title>
<link href="images/mithunlogo.jpg" rel="icon">
</head>
</head>
<body>
<h1 align="center"> Welcome to Mithun Technologies Private Ltd. Best Place to upskill - New DevOps with AWS and AI Assitance Batch will start on  31st July  2026  at 6:00 AM IST  - Regular classes will start from Aug 3rd  at 6.00 AM IST - GitHub Webhook  Demo  by Bhaskar Reddy L</h1>
<h1 align="center">Welcome to Mithun Technologies Private Ltd. Ph No: +91-9980923226, +91-9980923216,Bengaluru,Karnataka,India</h1>
<h1 align="center"> Mithun Technologies- Very Good Training center for DevOps with AWS,Python & AWS Solution Architect & Terraform in Bangalore India.Teaching Real Time scnerios</h1>
<h1> Trainer Name is: Bhaskar Reddy Lacchannagari</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<br>
<h1><h3> Client Side IP Address </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br></h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/mithunlogo.jpg" alt="" width="100">
	</span>
	<span style="font-weight: bold;">
		Mithun Technologies, 
		Martha Halli, Above ICICI Bank, Beside Meghana Foods,
		Bangalore,
		+91-9980923226,+91-9980923216
		devopstrainingblr@gmail.com
		<br>
		<a href="mailto:devopstrainingblr@gmail.com">Mail to Mithun Technologies</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center>Mithun Technologies - Consultant, Training, Development Center.</p>
<p align=center><small>Copyrights 2025 by <a href="http://mithuntechnologies.com/">Mithun Technologies,Bengaluru</a> </small></p>

</body>
</html>
