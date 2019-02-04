<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>
<body>
<%@ page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
Statement stmt=co.createStatement();
String sql="SELECT * FROM stu";

ResultSet rs=stmt.executeQuery(sql);
while(rs.next())
{
	System.out.println(rs.getInt(1));
}

%>
</body>
</html>