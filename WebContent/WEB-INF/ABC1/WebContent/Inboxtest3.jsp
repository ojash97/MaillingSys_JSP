<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>

<title>Insert title here</title>
</head>
<%
String t1="pksingh98";
String url ="jdbc:mysql://localhost:3306/"+t1+"";
String user ="root";
String pass ="root";
String query ="Select * from inbox";

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,user,pass);
Statement st= con.createStatement();
int j = st.executeUpdate(query);
if(j==1)
{
	%>
	<script>
	window.alert("SUCESSFULLY SENDED");
	</script>
<p>Click <a href="http://localhost:8080/ABC1/NewFile3.jsp">Sign in</a>.</p>
<% 




}
else
{
	
}



%>

<body>

</body>
</html>