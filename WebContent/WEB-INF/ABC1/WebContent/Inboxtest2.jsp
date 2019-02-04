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
String t1=request.getParameter("id");
String t2=request.getParameter("message");
String t3=request.getParameter("from");


String url ="jdbc:mysql://localhost:3306/"+t1+"";
String user ="root";
String pass ="root";
String query ="Insert into 	inbox values (?,?)";

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,user,pass);
PreparedStatement st= con.prepareStatement(query);
st.setString(1,t2);
st.setString(2,t3);
int i =st.executeUpdate();
st.close();
con.close();

String url1 ="jdbc:mysql://localhost:3306/"+t3+"";
String user1 ="root";
String pass1 ="root";
String query1 ="Insert into 	sentbox values (?,?)";

Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection(url1,user1,pass1);
PreparedStatement st1= con1.prepareStatement(query1);
st1.setString(1,t2);
st1.setString(2,t1);
int j =st1.executeUpdate();
st1.close();
con1.close();




if(i==1)
{
	%>
	<script>
	window.alert("SUCESSFULLY SENDED");
	</script>
<p> <a href="http://localhost:8080/ABC1/login.jsp">Sign in</a>.</p>
<% 
}




%>

<body>

</body>
</html>