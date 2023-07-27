<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HR Home</title>
<style type="text/css">

body{user-select: none;}
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
			<li><a href="#">Requirements</a>
				<ul>
					<li><a href="viewReqbyHR">View Requirements</a></li>
					<li><a href="">Search Requirements</a></li>
					<li><a href="">Search Requirements</a></li>
				</ul>
			</li>
			
			<li><a href="#">Students</a>
				<ul>
					<li><a href="">View STudents</a></li>
					<li><a href="">Search Students</a></li>
				</ul></li>
			<li><a href="#">MORE</a>
				<ul>
					<li><a href="">##</a></li>
					<li><a href="">##</a></li>
					<li><a href="">##</a></li>
				</ul></li>
			<li><a href="Index.jsp">LOGOUT</a></li>
		</ul>
	</nav>
	
	<H1 style="text-align: center; font-size: 40px; color: white;">HRs HOME</H1>
	<h1 style="color:green;font-style:italic;font-weight:bold;text-align: center;">${msg}</h1>

</body>
</html>