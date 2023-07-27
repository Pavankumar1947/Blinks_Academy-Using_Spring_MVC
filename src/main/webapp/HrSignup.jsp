<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hrsign up</title>
<style>
body{
	user-select: none;
}
</style>
</head>
<body>
<h1>HR SIGNUP</h1>
<form:form action="hrsignup" modelAttribute="hr" method="post">
	<h2>HR Name: <form:input path="hrname"  placeholder="Name" required="required" /> </h2>
	<h2>BRANCH:<form:select path="branch" placeholder="Branch" required="required" >
					<form:option value="Basavanagudi">BASAVANAGUDI JSP</form:option>
					<form:option value="BTM">BTM JSP</form:option>
					<form:option value="Hebbal">HEBBAL JSP</form:option>
					<form:option value="Marathalli">MARATHALLI JSP</form:option>
					<form:option value="Rajajinagar">RAJAJINAGAR JSP</form:option>
				</form:select>  </h2>
	<h2>USER NAME  <form:input path="username" placeholder="USER NAME" required="required"/> </h2>
	<h2>PASSWORD  <form:input path="password" placeholder="PASSWORD" required="required"/> </h2>
	<button >Save</button> 
	<button type="reset">Cancel</button>
</form:form>
</body>
</html>