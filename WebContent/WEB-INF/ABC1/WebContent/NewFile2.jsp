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
String t1=request.getParameter("fname");
String t2=request.getParameter("lname");
String t3=request.getParameter("email");
String t4=request.getParameter("phone");
String t5=request.getParameter("dd");
String t6=request.getParameter("mm");
String t7=request.getParameter("yy");
String t8=request.getParameter("uname");
String t9=request.getParameter("pass");

String url ="jdbc:mysql://localhost:3306/student";
String user ="root";
String pass ="";
String query ="Insert into register values (?,?,?,?,?,?,?,?,?)";

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,user,pass);
PreparedStatement st= con.prepareStatement(query);
int i =st.executeUpdate();

out.println("SUCCESSFULLY INSERTED");
st.close();
con.close();




%>



</body>
</html>