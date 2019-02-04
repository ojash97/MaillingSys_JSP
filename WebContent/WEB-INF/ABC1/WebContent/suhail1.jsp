
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: black;
}

* {
    box-sizing: border-box;
}

/* Add padding to containers */
.container {
    padding: 15px;
    background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=number],input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=number]:focus {
    background-color: #ddd;
    outline: red;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: #red;
    color: green;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 0.9;
}

/* Add a blue text color to links */
a {
    color: red;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
</style>
</head>


<body>

<h1>Hi Welcome to the SignUp Page</h1>
<form method="post" action= "test.jsp">
<div class="container">
<h2>First Name</h2>
<input type="text" name="fname" >

<h2>Last Name </h2>

<input type ="text" name="lname" >
<h2>Email ID (*OPTIONAL):</h2>

<input type ="text" name="email" >
<h2>Phone:</h2>

<input type ="number" name="phone" >
<h2>DOB: DD</h2>

<input type ="number" name="dd" >
<h3>MM:</h3>

<input type ="number" name="mm" >
<h2>YYYY:</h2>

<input type ="number" name="yy" >

<h2>Username:</h2>

<input type ="text" name="uname" >
<h2>password:</h2>

<input type ="Password" name="pass" >
<h2>Answer any security question</h2>
<h5> This will help you when you forgot your password. So answer it wisely and you can add some symbols, numbers hard to guess.
 </h5>
<h3>Likewise Your Favourite book : A@#Harry Potter</h3>

 <input type = "text" list = "questions" name="questions"> 
      <datalist id = "questions">
        <option value = "Your favourite book">
        <option value = "Your first pet">
        <option value = "Any anonymous word ">
        <option value = "Your idol">
      </datalist>
<input type = "text" name = "security">









 <button type="submit" class="registerbtn">Register</button>
</div>

<div class="container signin">
    <p>Already have an account? <a href="http://localhost:8080/ABC1/login.jsp">Sign in</a>.</p>
</div>
</form>

</body>
</html>