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
{


	String token="1";
String t1=request.getParameter("fname");
String t2=request.getParameter("lname");
String t3=request.getParameter("email");
String t4=request.getParameter("phone");
String t5=request.getParameter("dd");
String t6=request.getParameter("mm");
String t7=request.getParameter("yy");
String t8=request.getParameter("uname");
String t9=request.getParameter("pass");
String t10=request.getParameter("questions");
String t11=request.getParameter("security");


String url ="jdbc:mysql://localhost:3306/student";
String user ="root";
String pass ="root";
String query ="Insert into 	register values (?,?,?,?,?,?,?,?,?,?,?)";
String query1 ="Select * from register";

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,user,pass);
PreparedStatement st= con.prepareStatement(query);
st.setString(1,t1);
st.setString(2,t2);
st.setString(3,t3);
st.setString(4,t4);
st.setString(5,t5);
st.setString(6,t6);
st.setString(7,t7);
st.setString(8,t8);
st.setString(9,t9);
st.setString(10,t10);
st.setString(11,t11);
int i =st.executeUpdate();


st.close();
con.close();

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
String query3 ="CREATE TABLE inbox ( message varchar(450) );";
String query4 ="CREATE TABLE sentbox ( message varchar(450) );";
String query5 ="CREATE TABLE outbox (message varchar(450) );";
String query6 ="ALTER TABLE inbox ADD message1 varchar (45);";
String query7 ="ALTER TABLE sentbox ADD message1 varchar (45);";

Class.forName("com.mysql.jdbc.Driver");
Connection con2 = DriverManager.getConnection(url2,user2,pass2);
Statement st2= con2.createStatement();
int z=st2.executeUpdate(query3);
int z1=st2.executeUpdate(query4);
int z3=st2.executeUpdate(query5);
int z4=st2.executeUpdate(query6);
int z5=st2.executeUpdate(query7);


st2.close();
con2.close();
}

%>



<h2>SUCCESSFULLY CREATED</h2>
<p><a href="http://localhost:8080/ABC1/login.jsp">Sign in</a>.</p>





</body>
</html>