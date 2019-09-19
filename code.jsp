<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/code.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://fonts.googleapis.com/css?family=PT Sans' rel='stylesheet'>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>
<h1>Your Invitation Code</h1>
</header>

<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); //HTTP 1.1
	
	response.setHeader("Pragma","no-cache"); //HTTP 1.0
	
	response.setHeader("Expires","0"); //proxy

	session.setAttribute("create","1");
%>



<h3>${code} </h3><br> 
<a href="display.jsp"> Show </a>

</body>
</html>