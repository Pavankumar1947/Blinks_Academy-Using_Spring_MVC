<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>
<style>
body{
	user-select: none;
}
</style>
</head>
<body>
	<h1 style="color: blue; text-align: center;">${msg}</h1>
	<div>
		<h1>Student Login</h1>
		<form action="StudentLogin" method="post">
			USERNAME:<input type="text" name="username"><br>
			PASSWORD:<input type="password" name="password"><br>
			<button>LOGIN</button>
			<button type="reset">CLEAR</button>
		</form>
		<a href="Index.jsp"><button>BACK</button> </a>
	</div>

</body>
</html>