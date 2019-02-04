<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body>
<%
String email=request.getParameter("email"); 
//session.putValue("email",email); 
String pass=request.getParameter("pass"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emailsystem?useSSL=false","root","root");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from loginuserauth where email='"+email+"' and pass='"+pass+"'"); 
try{
rs.next();
if(rs.getString("pass").equals(pass)&&rs.getString("email").equals(email)) 
{ 
out.println("Welcome " +email);
response.sendRedirect("sendmail.html");
}
}
catch (Exception e) {
out.println("Invalid password or username.");
}
%>
</body>
</html>