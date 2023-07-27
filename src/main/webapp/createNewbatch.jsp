
<!--  

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<title>create batch</title>
<style>
body{user-select: none;}
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

form{font-size: 25px;text-align: center;}

h1{text-align: center;}

input[type="submit"]{
  padding: 10px 20px; background-color: #4CAF50; color: #fff;
  border: none; cursor: pointer; border-radius: 10px; }

input[type="reset"]{
  padding: 10px 20px; background-color: #e37777; color: #fff;
  border: none; cursor: pointer; border-radius: 10px;}

button {
    padding: 10px 20px;background-color: #6ea0c8;color: #fff;
	border: none;cursor: pointer;border-radius: 10px;}
  
button a{  text-decoration: none;color: #fff; }

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
					<li><a href=""> View Batches</a></li>
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
	


<h1>CREATE BATCH HERE</h1>
        <form:form action="saveBatch" modelAttribute="batch">
            <label for="batchcode">BATCH CODE:</label>
            	<form:input type="string"   path="batchcode" placeholder="enter" required="required"/>
            <label>DATE:</label>
            	<form:input type="date" path="date"  required="required" />
            	
            <label for="subject">COURSE</label>
            <form:select type="option" id="subject" path="course" required="required" name="course">
                <option value="">Select Course...</option>
                <option value="javafullstack">JAVA FULL STACK</option>
                <option value="mernstack">MERN STACK</option>
                <option value="devops">DEVOPS</option>
                <option value="internship">INTERNSHIP</option>
                <option value="aws">AWS</option>
                <option value="others">OTHER...</option>
            </form:select>
            
            <label for="batchtiming">BATCH TIMING</label>
            <form:select type="option" id="batchtiming" path="batchtiming" required="required" name="batchtiming">
                <option value="*">Select SLOTS...</option>
                <option value="9_11am">9-11AM</option>
                <option value="10_12pm">10-12AM</option>
                <option value="11_1pm">11-01PM</option>
                <option value="12_2pm">12-2PM</option>
                <option value="1_3pm">1-3PM</option>
                <option value="2_4pm">2-4PM</option>
                <option value="3_5pm">3-5PM</option>
                <option value="4_6pm">4-6PM</option>
                <option value="5_7pm">5-7PM</option>
               	<option value="other">OTHER...</option>
            </form:select>
            
            <br><br>

            <label for="subject">SUBJECT</label>
            <form:select type="option" id="subject" path="subject" required="required" name="subject">
                <option value="">Select a Subject...</option>
                <option value="corejava">Core-Java</option>
                <option value="programming">programming</option>
                <option value="sql">SQL</option>
                <option value="ds">Data Structure</option>
                <option value="webtechnology">Web-Tech</option>
                <option value="react">React</option>
                <option value="node">Node-js</option>
                <option value="devops">Devops</option>
                <option value="spring">Spring Boot</option>
                <option value="devops">Devops</option>
                <option value="mangodb">MangoDB</option>
                <option value="j2ee">J2EE</option>
                <option value="aptitude">Aptitude</option>
                <option value="cloudcomputing">Clout Computing</option>
            </form:select>



            <label for="trainers">TRAINERS</label>
            <form:select id="trainers" path="trainers" required="required" name="trainers">
                <option value="*">Select-Triners</option>
                <option value="shankar">Shaker</option>
                <option value="siddesh">Siddesh</option>
                <option value="sridhar">Sridhar</option>
                <option value="preetham">Preetham</option>
                <option value="danish">Danish</option>
                <option value="saish">Saish</option>
                <option value="kiran">Kiran</option>
                <option value="shashank">Shashank</option>
                <option value="mohan">Mohan</option>
                <option value="rahul">Rahul</option>
                <option value="darshan">Darshan</option>
                <option value="abhilash">Abhilash</option>
                <option value="keerthi">Keerthi</option>
                <option value="lakshman">Lakshman</option>
                <option value="harikrishna">Harikrishna</option>
                <option value="lokesh">Lokesh</option>
                <option value="akashay">Akashay</option>
            </form:select><br><br><br>
            
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
               
            
            
       </form:form>
            
        

</body>
</html>



-->