


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/main.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://fonts.googleapis.com/css?family=PT Sans' rel='stylesheet'>
<title>Display</title>
</head>
<body>



<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); //HTTP 1.1
	
	response.setHeader("Pragma","no-cache"); //HTTP 1.0
	
	response.setHeader("Expires","0"); //proxy
%>


<%
if(session.getAttribute("vote")==null){
%>
<header>
<h1>Welcome ${name}</h1>
</header>
<form action="Comment" method="post">

 <select name="status">
    <option value="Interested"> Interested</option>
    <option value="Not Interested">Not Interested</option>
  </select>
  <input type="text" name="comment" placeholder="comment">
  <button type="submit" >Submit</button>

</form>
<%

}
else
{
	response.sendRedirect("display.jsp");
}
%>

</body>
</html>