<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update batch</title>
<style type="text/css">
body{user-select: none;
font-size: 20px;}
h1{text-align: center;}
form{font-size: 25px;text-align: center;}
body {font-family: Arial, sans-serif; margin: 0;background-image: url('https://t3.ftcdn.net/jpg/06/14/45/40/240_F_614454097_96kchMLVgzHlIZm9cfjAvpwbWXtdQFCZ.jpg'); background-repeat: no-repeat; background-size:  100% 720px; background-position: inherit;}
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
<h1>EDIT BATCH DETAILS HERE</h1>
<form:form action="updatebatch1" modelAttribute="batch" method="post">

		<label>BATCH CODE:</label><form:input path="batchcode"  readonly="true"/>
		<label>DATE:</label><form:input path="date"  readonly="true"/>
		<label>COURSE TYPE:</label><form:input  path="course" />  <br> 
		<label>BATCH TIMING:</label><form:input path="batchtiming"/>
		<label>SUBJECT NAME:</label> <form:input path="subject"  />
	 	<label>TRAINER NAME:</label><form:input  path="trainers" /> <br><br> 
		<button>SUBMIT</button> 
		<button type="reset">CANCEL</button>
	</form:form>
	<h1><a href="ManagementHome.jsp"><button>BACK</button></a></h1>
	

</body>
</html>