<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<title>Post Requirements</title>
<style>
body{user-select: none;}
body {font-family: Arial, sans-serif; margin: 0;background-image: url(''); background-repeat: no-repeat; background-size:  100% 100%; background-position: inherit;}
.navbar { background-color: #5186a4; color: #fff; display: flex;justify-content: space-evenly; padding: 20px; border:  5px solid white; position: relative;}
.navbar-brand { font-size: 50px; font-weight: bold; text-decoration: none; color: #fff;}
.navbar a:hover{ background-color: rgb(24, 201, 204);border-radius: 20px;}
.navbar ul {list-style: none; margin: 0; padding: 0; display: flex;align-items: center;}
.navbar li { position: relative; margin-right: 20px; width: fit-content;}
.navbar li:last-child { margin-right: 0;}
.navbar li a {color: #fff; text-decoration: none; display: block; padding: 10px;font-size: 20px;}
.navbar li:hover ul {display: block;}
.navbar ul ul {display: none;position: absolute;top: 100%; left: 0; background-color: #615252;min-width: 200px;}
.navbar ul ul li {width: 100%;margin-right: 0;}
.navbar ul ul a {padding: 10px;}
h1{text-align: center;}


@media (max-width: 768px) {
  .navbar {flex-direction: column;align-items: flex-start;}
  .navbar ul {flex-direction: column;align-items: flex-start;}
  .navbar li {margin-bottom: 10px;}
  .navbar ul ul {position: static;background-color: transparent;min-width: 0;}
  .navbar ul ul li { width: 100%;}
  .navbar ul ul a {padding: 10px 20px;}
}





form{font-size: 25px;text-align: center;}


label {
  font-size: 18px;
  margin-bottom: 10px;
}

form input {
  width: 15%;
  padding: 10px;
  font-size: 17px;
  border: 1px solid #ccc;
  border-radius: 5px;
  margin-bottom: 15px;
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

body {font-family: Arial, sans-serif; margin: 0;background-image: url('https://t3.ftcdn.net/jpg/06/14/45/40/240_F_614454097_96kchMLVgzHlIZm9cfjAvpwbWXtdQFCZ.jpg'); background-repeat: no-repeat; background-size:  100% 720px; background-position: inherit;}




</style>
</head>
<body>
<nav class="navbar">
		<ul>
			<li><a href="#">STUDENT</a>
				<ul>
					<li><a href="viewallstudents">View Students</a></li>
					<li><a href="searchstudentbybranch.jsp">STUDENT by BRANCH</a></li>
				</ul></li>
			<li><a href="#">HR</a>
				<ul> 
					<li><a href="ViewAllHr">View All HR</a></li>
					<li><a href="viewhrbybranch.jsp">HR by BRANCH</a></li>
				</ul></li>
			<li><a href="#">REQUIREMENTS</a>
				<ul>
					<li><a href="loadReq">POST REQUIREMENTS</a></li>
					<li><a href="requirementsList">VIEW REQUIREMENTS</a></li>
				</ul></li>
			<li><a href="#">BATCHES</a>
				<ul>
					<li><a href="loadBatch">Create New Batch</a></li>
					<li><a href="batchList"> View Batches</a></li>
					<li><a href=""> Search Batches</a></li>
				</ul></li>
			<li><a href="#">MORE</a>
				<ul>
					<li><a href="">Trackers</a></li>
					<li><a href="">Trainers</a></li>
					<li><a href="">Demo Sessions</a></li>
				</ul></li>
			<li><a href="Index.jsp">LOGOUT</a></li>
		</ul>
	</nav>
	
<h1>POST REQUIREMENTS</h1>
<form:form action="postrequirementsmgmt" modelAttribute="req" method="post">
		<label>COMPAMY CODE:</label><form:input path="companycode"  placeholder="Create company Code" required="required"/>
		<label>COMPANY-NAME:</label><form:input path="companayname"  placeholder="Company Name" required="required"/>
		<label>MAIN-SKILLS:</label><form:input  path="skills"  placeholder="Skills" required="required"/>   
		<label>YOP:</label><form:input path="yop" placeholder="YOP" required="required"/>
		<label>STREAM:</label> <form:input path="stream"  placeholder="Stream" required="required"/> 
	 	<label>PERCENTAGE:</label><form:input  path="percentage"  placeholder="Percentage" required="required"/> 
		<label>QUALIFICATION:</label><form:input  path="qualification"  placeholder="Qualification" required="required"/> 
		<label>POSITIONS: </label><form:input  path="positions"  placeholder="No Of Positions" required="required" />
		<button>SUBMIT</button> 
		<button type="reset">CANCEL</button>
	</form:form>
	</body>
</html>