<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>This is index.jsp Page</h2>
<jsp:include page="display.jsp"> 
<jsp:param name="userid" value="Chaitanya" /> 
<jsp:param name="password" value="Chaitanya" /> 
<jsp:param name="name" value="Chaitanya Pratap Singh" /> 
<jsp:param name="age" value="27" /> 
</jsp:include> 
<a href="http://localhost:8080/ABC1/display.jsp">Sign in</a>
</body>
</html>