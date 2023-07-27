<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	user-select: none;
}
form {
  display: flex;
  flex-direction: row;
  flex-wrap:wrap;
  align-items: center;
 
  margin-top: 20px;
  color: blue;
  
}

h2 {
  
  flex-direction: row;
  align-items: center;
  margin-bottom: 10px;
}

form input[type="text"],
form input[type="email"],
form input[type="password"] {
  width: 300px;
  padding: 10px;
  margin: 10px;
  border-radius: 5px;
  border: none;
  border-bottom: 2px solid #ccc;
  font-size: 1.2rem;
}

form select {
  width: auto;
  padding: 10px;
  margin: 10px;
  border-radius: 5px;
  border: none;
  border-bottom: 2px solid #ccc;
  font-size: 1rem;
}

.pk{
display: flex;
  flex-direction: row;
  flex-wrap:wrap;
  align-items: center;
 
  margin-top: 20px;
  color: blue;
  background-color: buttonhighlight;
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
<body >
<h1 style="color: blue;text-align: center;">STUDENT SIGN UP</h1>

	<form:form action="studentsignup" modelAttribute="student" method="post">
		<h2>NAME:<form:input path="studentname"  placeholder=" StudentName" required="required" /></h2>
		<h2>User-NAME:<form:input path="username"  placeholder=" UserName" required="required" /></h2>
		<h2>Email-ID:<form:input type="email" path="email"  placeholder="Email" required="required" /> </h2>    
		<h2>MOB No:<form:input type="tel" path="phoneno"  placeholder="Phone-No" required="required"/> </h2>
		<h2>PASSWORD: <form:input type="password" path="password"  placeholder="PASSWORD" required="required" /> </h2>
	 	
		<button >SIGNUP</button> 
	<button type="reset">CANCEL</button>
	</form:form>
</body>
</html>