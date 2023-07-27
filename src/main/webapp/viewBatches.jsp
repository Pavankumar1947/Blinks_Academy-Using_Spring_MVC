<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>viewBatch</title>
<style type="text/css">
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
					<li><a href="createNewbatch.jsp">Create New Batch</a></li>
					<li><a href="viewBatches.jsp"> View Batches</a></li>
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
	
	
	<h1 style="text-align: center; font-size: 40px; color: white;">ALL BATCHES</h1>
	<table border="1" style="align-content: center; font-size: 20px;margin-left: 15%;">
	<tr style="background-color: blue;text-align: center;color: white;">
		<th>SL.No</th>
		<th>BATCH-CODE</th>
		<th>START-DATE</th>
		<th>COURSE-TYPE</th>
		<th>BATCH-TIME</th>
		<th>SUBJECT</th>
		<th>TRAINER</th>
		<th>DELETE</th>
		<th>EDIT</th>
	</tr>
	

</body>
</html>