<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page='NewFile5.jsp'>
  
</jsp:include>


<%
String uname;;


String url ="jdbc:mysql://localhost:3306/ ";
String user ="root";
String pass ="";
String query =" CREATE SCHEMA '"+uname+"';";

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,user,pass);
Statement stu= con.createStatement();
int s=stu.executeUpdate(query);
out.println(s);
stu.close();
con.close();


%>



</body>
</html>