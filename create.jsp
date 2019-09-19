<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/create.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://fonts.googleapis.com/css?family=PT Sans' rel='stylesheet'>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>
<h2>Organizer</h2>
</header>

<%

	if(session.getAttribute("create").equals("1"))
		response.sendRedirect("welcome.jsp");

	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); //HTTP 1.1
	
	response.setHeader("Pragma","no-cache"); //HTTP 1.0
	
	response.setHeader("Expires","0"); //proxy
	

	
%>

<form action="Insert" method="post">

	<select name="type">
	  <option value="marriage">Marriage</option>
  	  <option value="bday">birthday party</option>
      <option value="reunion">Reunion</option>
 	</select><br>
 	
 	<input type="text" name="for" placeholder="Organized for"><br>
 	<input type="text" name="desc" placeholder="description"><br>
 	
 	
 	<button type="submit" >Submit</button><br>

</form>
<%session.setAttribute("admin","1"); %>
</body>
</html>