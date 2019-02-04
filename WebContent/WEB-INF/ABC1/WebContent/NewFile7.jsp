<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="display.jsp" method="post">
 <input type="hidden" name="u1" value="<%=u1%>"/>
 <input type="hidden" name="u2" value="<%=u2%>" />
 <input type="hidden" name="u3" value="<%=u3%>" />
 <button type="hidden" id="qq" value="Login" style="display: none;"></button>
</form>
  <script type="text/javascript">
     document.getElementById("qq").click();
  </script>
</body>
</html>