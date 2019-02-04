<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String url2 ="jdbc:mysql://localhost:3306/student";
String user2 ="root";
String pass2 ="root";
String query3 ="alter table inbox(add column from varchar(400)));";
String query4 ="CREATE TABLE sentbox (  message varchar(450) );";
String query5 ="CREATE TABLE outbox (message varchar(450) );";

Class.forName("com.mysql.jdbc.Driver");
Connection con2 = DriverManager.getConnection(url2,user2,pass2);
Statement st2= con2.createStatement();
int z=st2.executeUpdate(query3);


st2.close();
con2.close();




%>

</body>
</html>