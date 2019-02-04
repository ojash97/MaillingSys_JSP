<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Refresh" content="1;url=LoginPage.html">
<title>Insert title here</title>
</head>
<%
int c=0;
String t1=request.getParameter("uname");
String t2=request.getParameter("pass1");
String t3=request.getParameter("pass2");
if (t3.equals(t2))
	
{
	c++;
}
else
{
	%>

<script>
window.alert("Password are not matching");

</script>


<%
}


if (c==1)
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emailsystem","root","root");
	Statement st=conn.createStatement();
	String query ="UPDATE loginuserauth set pass='"+t3+"' WHERE email ='"+t1+"';";
	int i =st.executeUpdate(query);
	conn.close();
	st.close();
	if (i==1)
{
	%>
	<script>
	window.alert("SUCESSFULLY CHANGED")
	</script>
	
	<%
	
}

else
{
	%>
	<script>
	window.alert("ENTER USERNAME CORRECTLY")
	</script>
	
	<%
		
}



}


%>



</body>
</html>