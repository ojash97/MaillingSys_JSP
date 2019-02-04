<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%

String url ="jdbc:mysql://localhost:3306/student";
String user ="root";
String pass ="";
int id=222;

String name = "k2AaD";
String query ="Insert into stu values (?,?)";
String quer="select * from stu";

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,user,pass);
PreparedStatement st= con.prepareStatement(query);
st.setInt(1, id);
st.setString(2, name);
int count =st.executeUpdate();
System.out.println("UPDATED"+count);
st.close();
Statement stu=con.createStatement(); 

ResultSet rs=stu.executeQuery(quer);
while (rs.next())
{
String value= rs.getInt("id")+" : " + rs.getString("name");
System.out.println(value);
}
stu.close();
con.close();




%>
</body>
</html>