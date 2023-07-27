<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All HR</title>
<style>
body{user-select: none;}
body {font-family: Arial, sans-serif; margin: 0;background-image: url('https://t3.ftcdn.net/jpg/04/26/06/70/240_F_426067028_WKg5UlRSdxTgFwkeqMvawemzhC5YywCL.jpg'); background-repeat: no-repeat; background-size:  100% 720px; background-position: inherit;}

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

@media (max-width: 768px) {
  .navbar {flex-direction: column;align-items: flex-start;}
  .navbar ul {flex-direction: column;align-items: flex-start;}
  .navbar li {margin-bottom: 10px;}
  .navbar ul ul {position: static;background-color: transparent;min-width: 0;}
  .navbar ul ul li { width: 100%;}
  .navbar ul ul a {padding: 10px 20px;}
}
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


	<h1 style="text-align: center; font-size: 40px; color: white;">LIST OF ALL HRs</h1>
	<br>
	<table border="1" style="align-content: center; margin-left: 450px;font-size: 20px;">
		<tr style="background-color: blue;text-align: center;color: white;">
			<th>HR Name</th>
			<th>BRANCH</th>
			<th>USERNAME</th>
			<th>STATUS</th>
			<th>DELETE</th>
			<th>EDIT</th>
			<th>CHANGE STATUS</th>
			
		</tr>
		<c:forEach var="hr" items="${hrs}">
			<tr style="background-color: pink;">
				<th>${hr.getHrname()}</th>
				<th>${hr.getBranch()}</th>
				<th>${hr.getUsername()}</th>
				<th>${hr.isStatus()}</th>
				<th><a href=""><button style=" width: 100%;">Delete</button></a></th>
				<th><a href="?id=${hr.getId()}"><button style=" width: 100%;">EDIT</button></a></th>
				<th><a href="changestatus?id=${hr.getId()}"><button style=" width: 100%;">Change</button></a></th>
			</tr>
		</c:forEach>
		
		
		
	</table><br><br>
</body>
</html>