<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>M-Signup</title>
<style>
body{user-select: none;}
body{
  background-image: url('https://img.freepik.com/premium-photo/cartoon-characters-work-laptop-business-startup-teamwork-concept-communication-social-networks-3d-illustration_325164-1187.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=ais');
  background-size: cover;
  background-repeat: no-repeat;
  background-size: 100% 100%;
  
}
form {
  
  margin-top: 60px;
  color: white;
  margin-left: 10%;
  
}

h2 {
  
  flex-direction: row;
  align-items: center;
  margin-bottom: 10px;
  font-size: 30px;
}

form input[type="text"],
form input[type="email"],
form input[type="password"] {
  width: 400px;
  padding: 10px;
  margin: 10px;
  border-radius: 5px;
  border: none;
  border-bottom: 2px solid #ccc;
  font-size: 1.5rem;
}

form select {
  width: auto;
  padding: 20px;
  margin: 10px;
  border-radius: 5px;
  border: none;
  border-bottom: 2px solid #ccc;
  font-size: 2rem;
 
}

button {
  margin: 20px;
  padding: 10px 20px;
  border-radius: 5px;
  border: none;
  color: #fff;
  background-color: #007bff;
  font-size: 1.2rem;
  cursor: pointer;
}

button[type="reset"] {
  background-color: #dc3545;
}

button:hover {
  background-color: #0069d9;
}

button[type="reset"]:hover {
  background-color: #c82333;
}

</style>
</head>
<body>

<h1 style="color: white;margin-left: 10%;">MANAGEMENT SIGN UP</h1>

	<form:form action="managementsignup" modelAttribute="management" method="post">
		
		<h2>USERNAME:<br><form:input path="mname"  placeholder=" Name" required="required" /></h2>
		<h2>USERNAME:<br><form:input path="username"  placeholder=" UserName" required="required" /></h2>
		<h2>PASSWORD:<br> <form:input type="password" path="password"  placeholder="PASSWORD" required="required" /> </h2>
		
		<button >SIGNUP</button> 
	<button type="reset">CANCEL</button>
	</form:form>
	<a href="SignUp.jsp" style="margin-left: 10%;"><button >BACK</button></a>
	
	


</body>
</html>