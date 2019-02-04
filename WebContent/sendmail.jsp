<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Properties" %>
	<%@page import="javax.mail.*" %>
	<%@page import="javax.mail.internet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sending an email</title>
</head>
<body >
<h1>Sending an email</h1>
	<%! 
		public static class SMTPAuthenticator extends Authenticator{
		
		public PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication("newojash","ilmmsm@1974");
		}
	}
	%>

	<%
	int result = 0;
	if (request.getParameter("send") != null){
		String d_uname = "newojash";
		String d_password = "ilmmsm@1974";
		String d_host = "smtp.gmail.com";
		int d_port = 465;
	
		String m_to = new String();
		String m_from = "newojash@gmail.com";
		String m_subject = new String();
		String m_text = new String();
		
		if(request.getParameter("to") != null){
			m_to = request.getParameter("to");
		}
		
		if(request.getParameter("subject") != null){
			m_subject = request.getParameter("subject");
		}
		
		if(request.getParameter("message") != null){
			m_text = "<h1> Welcome to Web App!</h1><br />";
			m_text = m_text.concat(request.getParameter("message"));
			m_text = m_text.concat("<br /> <h2>Hope this is useful!</h2>");
		}
	//Create a Properties object
	Properties props = new Properties();
	
	//Create an SMTPAuthenticator object
	SMTPAuthenticator auth = new SMTPAuthenticator();
	
	//Create a mail session object
	Session ses = Session.getInstance(props, auth);
	
	//Craeate a MIME style email message object
	MimeMessage msg = new MimeMessage(ses);
	msg.setContent(m_text, "text/html");
	msg.setSubject(m_subject);
	msg.setFrom(new InternetAddress(m_from));
	msg.setRecipient(Message.RecipientType.TO, new InternetAddress(m_to));
	
	try {
		Transport transport = ses.getTransport("smtps");
		
		transport.connect(d_host, d_port, d_uname, d_password);
		
		transport.sendMessage(msg, msg.getAllRecipients());
		
		transport.close();
		
		result=1;
		
		out.print("Mail Sent");
		response.sendRedirect("sendmail.html");
	}
	catch (Exception e){
		out.println(e);}
	}
	%>	

</body>
</html>