<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.BufferedReader" %>
<%@page import="java.io.InputStreamReader" %>
<%@page import="java.io.OutputStreamWriter" %>
<%@page import="java.net.URL" %>
<%@page import="java.net.URLConnection" %>
<%@page import="java.net.URLEncoder" %>
<%@page import="java.net.HttpURLConnection" %>

    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String txt_sender=request.getParameter("txtsender");
String txt_number=request.getParameter("txtnumber");
String txt_message=request.getParameter("txtmessage");
String txt_api=("09WAKxu6mL0-D1uiCM3AMH3cA5PmGJ6vWaID3GRGVL");
	



try {
			// Construct data
			String apiKey = "apikey=" + txt_api;
			String message = "&message=" + txt_message;
			String sender = "&sender=" + txt_sender;
			String numbers = "&numbers=" + txt_number;
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				//stringBuffer.append(line);
			}
			rd.close();
			
			//return stringBuffer.toString();
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			//return "Error "+e;
		}
%>
</body>
</html>