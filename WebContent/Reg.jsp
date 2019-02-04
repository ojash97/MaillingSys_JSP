<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Refresh" content="3;url=LoginPage.html">
<title>Insert title here</title>
</head>
<body>
<%
String email=request.getParameter("email");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String pass=request.getParameter("pass");
String phone_no=request.getParameter("phone_no");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emailsystem","root","root");
Statement st=conn.createStatement();
 int i=st.executeUpdate("insert into loginuserauth(email,fname,lname,pass,phone_no)values('"+email+"','"+fname+"','"+lname+"','"+pass+"','"+phone_no+"')");
out.println("Data is succesfully inserted!");
}
catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}


%>

</body>
</html>