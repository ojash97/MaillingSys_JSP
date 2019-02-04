<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String url1 ="jdbc:mysql://localhost:3306";
String user1 ="root";
String pass1 ="root";
String query2 ="create database "+t8+" ";


Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection(url1,user1,pass1);
Statement st1= con1.createStatement();
int y=st1.executeUpdate(query2);%>

</body>
</html>