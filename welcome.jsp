<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<link href="css/welcome.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://fonts.googleapis.com/css?family=PT Sans' rel='stylesheet'>
<title>Welcome</title>
</head>
<body>
<header>
  <h1>Organizer</h1><br>
  
</header>

<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); //HTTP 1.1
	
	response.setHeader("Pragma","no-cache"); //HTTP 1.0
	
	response.setHeader("Expires","0"); //proxy
%>

<div id="1">

<form action="Check" method="post">
		<h4 style="background-color:white; color:red; width:100%; text-align:center;">${message}</h4>
		<input type="text" name="name" id="name" placeholder="Your name"><br>
		<input type="text" name="code" id="code" placeholder="Invite code"><br>
		<button type="submit" >Submit</button>
		
</form>
<% session.removeAttribute("message");
session.removeAttribute("vote");
session.setAttribute("create","0");
%>
</div>
<div id="2">
<br><a href="create.jsp"> create </a>
</div>

</body>
</html>