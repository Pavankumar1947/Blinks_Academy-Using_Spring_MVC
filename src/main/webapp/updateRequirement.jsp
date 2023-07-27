<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update Req</title>
<style type="text/css">
body{user-select: none;
font-size: 20px;}
h1{text-align: center;}
form{font-size: 25px;text-align: center;}
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
form input {
  width: 15%;
  padding: 10px;
  font-size: 17px;
  border: 1px solid #ccc;
  border-radius: 5px;
  margin-bottom: 15px;
}

</style>
</head>
<body>
<h1>EDIT Requirements HERE</h1><br>
<form:form action="updaterequirement1" modelAttribute="req" method="post">
		<label>COMPAMY CODE:</label><form:input path="companycode"  readonly="true"/>
		<label>COMPANY-NAME:</label><form:input path="companayname" readonly="true" />
		<label>MAIN-SKILLS:</label><form:input  path="skills"  />  
		<label>YOP:</label><form:input path="yop" /> <br><br>
		<label>STREAM:</label> <form:input path="stream"  /> 
	 	<label>PERCENTAGE:</label><form:input  path="percentage"  />    
		<label>QUALIFICATION:</label><form:input  path="qualification"  />
		<label>POSITIONS:</label> <form:input  path="positions"  /> <br><br>
		<button>SUBMIT</button> 
		<button type="reset">CANCEL</button>
	</form:form><br>
<label style="margin-left: 47%;" ><a href="ManagementHome.jsp"><button> BACK</button></a></label>


</body>
</html>