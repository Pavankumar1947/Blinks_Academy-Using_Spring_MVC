<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hr login</title>
<style>
body{user-select: none;}
body{
    background-image: url('https://img.freepik.com/premium-photo/cartoon-characters-work-laptop-business-startup-teamwork-concept-communication-social-networks-3d-illustration_325164-1187.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=ais');
    background-size: cover; background-repeat: no-repeat; background-size: 100% 140%;}
  
h2{
  color: aliceblue;font-size: 40px;margin-left: 100px;margin-top: 60px;}
  
form{
  margin-top: 50px; font-size: 30px;color: white;margin-left: 140px;}
    
label {
  font-weight: 100;margin-bottom: 5px; font-size: 40px; color: white;}
  
input[type="text"],
input[type="password"] {
   width: 25%;padding: 15px; margin-bottom: 15px; margin-top: 10px; border-radius: 5px;
   border: 1px solid #ccc; transition: border-color 0.3s ease;height: auto;font-size: 20px;}
  
input[type="text"]:focus,
input[type="password"]:focus {
  border-color: #4caf50;}     
  
a {
  display: flexbox;margin-top: 20px;text-decoration: none;
  color: white; margin-left: 10%;font-size: 20px;}
        
 button {
  margin: 20px;padding: 10px 20px;border-radius: 5px;border: none;
  color: #fff;background-color: #007bff;font-size: 1.2rem;cursor: pointer;}

button[type="reset"] {
  background-color: #dc3545;}
  
button:hover {
  background-color: #0069d9;}

button[type="reset"]:hover {
  background-color: #c82333;}
  

</style>
</head>
<body>
	<h1 style="color: blue; text-align: center;">${msg}</h1>
	<div>
		<h1 style="margin-left:10%; color: white;margin-top: 50px;">HRs LOGIN</h1>
		<form action="hrlogin" method="post">
			USERNAME:<br><input type="text" name="username" placeholder="Enter Username"><br>
			PASSWORD:<br><input type="password" name="password" placeholder="Enter Password"><br>
			<button>LOGIN</button>
			<button type="reset">CLEAR</button>
		</form>
	</div>
</body>
</html>