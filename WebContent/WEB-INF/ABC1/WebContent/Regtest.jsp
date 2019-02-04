<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String t8="pksingh";
String url1 ="jdbc:mysql://localhost:3306";
String user1 ="root";
String pass1 ="root";
String query2 ="create database "+t8+" ";

Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection(url1,user1,pass1);
Statement st1= con1.createStatement();
int y=st1.executeUpdate(query2);
st1.close();
con1.close();

String url2 ="jdbc:mysql://localhost:3306/"+t8+"";
String user2 ="root";
String pass2 ="root";
String query3 ="CREATE TABLE inbox (message VARCHAR(450) );";
String query4 ="CREATE TABLE sentbox (message1 VARCHAR(450) );";
String query5 ="CREATE TABLE outbox (message2 VARCHAR(450) );";

Class.forName("com.mysql.jdbc.Driver");
Connection con2 = DriverManager.getConnection(url2,user2,pass2);
Statement st2= con2.createStatement();
int z=st2.executeUpdate(query3);
int z1=st2.executeUpdate(query4);
int z3=st2.executeUpdate(query5);

%>


</body>
</html>