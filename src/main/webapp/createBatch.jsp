<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create Batch</title>
<style type="text/css">

body {font-family: Arial, sans-serif; margin: 0;background-image: url(''); background-repeat: no-repeat; background-size:  100% 720px; background-position: inherit;}
.navbar { background-color: #5186a4; color: blue; display: flex;justify-content: space-evenly; padding: 20px; border:  5px solid white; position: relative;}
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
  .navbar ul ul a {padding: 10px 20px;
  }
}

body{
    background-image: url('https://img.freepik.com/premium-photo/3d-render-megaphone-with-speech-bubble-background_85867-70.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=sph');
    background-repeat: no-repeat; background-size:  100% 700px;
	background-position: inherit; background-color: rgb(162, 218, 181);}

form label {
  font-size: 18px;
  margin-bottom: 5px;
  
}

form input[type="text"],
form input[type="date"] {
  width: 15%;
  padding: 10px;
  margin-bottom: 15px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

form button {
  padding: 10px 20px;
  background-color: #4CAF50;
  color: #fff;
  border: none;
  cursor: pointer;
  border-radius: 10px;
  margin-right: 10px;
}

form button[type="reset"] {background-color: #e37777;align-content: center;}
body{user-select: none;}	
form{font-size: 25px;text-align: center;}
h2{text-align: center;}
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
	<br>


<h2> Create New Batch here</h2>
<div class="container">
<form:form action="createBatch" modelAttribute="batch" method="post">

		<label>BATCH CODE:</label><form:input path="batchcode"  placeholder="Create Batch Code" required="required"/>
		<label>DATE:</label><form:input path="date"  placeholder="Date" required="required"/>
		<label>COURSE TYPE:</label><form:input  path="course"  placeholder="Course Name" required="required"/>   
		<label>BATCH TIMING:</label><form:input path="batchtiming" placeholder="Batch Timing" required="required"/><br><br>
		<label>SUBJECT NAME:</label> <form:input path="subject"  placeholder="subject" required="required"/>
	 	<label>TRAINER NAME:</label><form:input  path="trainers"  placeholder="Trainer Name" required="required"/> <br><br> 
		<button>SUBMIT</button> 
		<button type="reset">CANCEL</button>

	</form:form>
</div>
</body>
</html>