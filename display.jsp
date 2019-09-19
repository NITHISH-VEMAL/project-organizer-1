<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/display.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://fonts.googleapis.com/css?family=PT Sans' rel='stylesheet'>
<title>Response</title>
</head>
<body>
<header style="text-align:center;">
<h1>Response for " ${code} " </h1> 
</header>
 <% session.setAttribute("vote","yes");  %>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/nithish" user="root" password="vns_1998"/>  

<h4 style="margin-left: 37%">
 <sql:query var="rs" dataSource="${db}"> SELECT COUNT(*) AS count FROM store where statuse="Interested"</sql:query>
 
<c:forEach items="${rs.rows}" var="row">
    Total Interested: ${row.count}
    </c:forEach>


 <sql:query var="rs" dataSource="${db}"> SELECT COUNT(*) AS count FROM store where statuse="Not Interested"</sql:query>
 
<c:forEach items="${rs.rows}" var="row">
    Total Not Interested: ${row.count}
    </c:forEach>
 </h4>
 
<h5>Keep track of this link, Changes occurs based on the user's response :)</h5>

<sql:query var="rs" dataSource="${db}"> select * from store where codee=${code}</sql:query>

<c:forEach items="${rs.rows}" var="row">
	<h3 ><c:out value="${row.namee}" ></c:out> is <c:out value="${row.statuse}" > </c:out> </h3> 
	<h4><c:out value="${row.commente}" ></c:out></h4>
	

</c:forEach> 

</body>
</html>