
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<style>
div.fixed {
    position: fixed;
    bottom: 0;
    right: 0;
    width: 100px;
    border: 6px solid #13ED71;
}
</style>


<div class="fixed">
<a href="http://localhost:8080/ABC1/login.jsp">LOG OUT</a>.</p>


</div>
<style>
div.fixed1 {
    position: fixed;
    bottom: 10;
    right: 0;
    width: 150px;
    border: 10px solid #13ED71;
}
</style>
<div class="fixed1">
<h3 style="border: 2px solid Tomato;">SEND MESSAGE FROM HERE </h3><a href="http://localhost:8080/ABC1/Inboxtest.jsp">COMPOSE MAIL</a>.</p>
</div>

<%
String uname=request.getParameter("uname");
String psw=request.getParameter("psw");


int c=0;

String url ="jdbc:mysql://localhost:3306/student";
String user ="root";
String pass ="root";
String query ="Select * from register";

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,user,pass);
Statement stu= con.createStatement();
ResultSet rs = stu.executeQuery(query);
while (rs.next())
{
	
String u =rs.getString(8);
String v=rs.getString(9);
String r=rs.getString(1);
String z=rs.getString(2);

if (u.equals(uname) && v.equals(psw))
{ 
	
	%>
	<h1 style="color:rgb(255, 165, 0);"> WELCOME </h1>
	
	
	<% 
	
	out.println("  HI  "+"  "+r+"   "+z);
	c++;
	
}
}
stu.close();
con.close();

if(c==1)
{
	%>
	
	<script>
	window.alert("WELCOME !. HOW ARE YOU?");
	</script>
	
	
	


	
	
<%
	





String url1 ="jdbc:mysql://localhost:3306/"+uname+"";
String user1 ="root";
String pass1 ="root";
String query1 ="Select * from inbox";

Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection(url1,user1,pass1);
Statement stu1= con1.createStatement();
ResultSet rs1 = stu1.executeQuery(query1);
%>
<style>
h2 {
    text-shadow: 3px 2px red;
    border:6px solid Tomato;
    text-align: center;
    width : 100px;
   
}
</style>
<h2 >INBOX</h2>


<% 

int m=0;
out.println("SRNO."+". "+"   .  "+". "+"   .  "+". "+"   .  "+"FROM"+" . "+". "+". "+"   .  "+ ".     "+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+ "CONTENT");
%>
<h1></h1>
<% 
while (rs1.next())
{
m++;
String u =rs1.getString(2);
String v =rs1.getString(1);
out.println(m+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+u+" . "+". "+". "+"   .  "+ ".     "+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+ v);
%>
<h1> </h1>


<% 


}

%>
<style>
h2 {
    text-shadow: 3px 2px red;
    border:3px solid Tomato;
    width : 250px;
    align: center;
   
}
</style>
<h2 >SENT MESSAGE</h2>

<% 


String query2 ="Select * from sentbox";
ResultSet rs2 = stu1.executeQuery(query2);

int p=0;
out.println("SRNO."+". "+"   .  "+". "+"   .  "+". "+"   .  "+"FROM"+" . "+". "+". "+"   .  "+ ".     "+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+ "CONTENT");
%>
<h1></h1>
<% 
while (rs2.next())
{
p++;
String u1 =rs2.getString(2);
String v1 =rs2.getString(1);
out.println(p+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+u1+" . "+". "+". "+"   .  "+ ".     "+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+". "+"   .  "+ v1);
%>
<h1> </h1>


<% 



}


stu1.close();
con1.close();

}
else
{

%>

<h1>ENTERED WRONG USERNAME & PASSWORD</h1>
<script>
	window.alert("KINDLY ENTER CORRECT DETAILS");
	
	</script>
	

	

<% 
}
%>












</body>
</html>