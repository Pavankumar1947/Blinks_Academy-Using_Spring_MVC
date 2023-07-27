<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Signup</title>
<link href='https://fonts.googleapis.com/css?family=Nova Square' rel='stylesheet'>

<style type="text/css">
	* {
    margin: 0;
    padding: 0;
    font-family: "Nova Square", sans-serif;
}
body{
	user-select: none;
}
html,
body {
    background-image: url("../images/background.png");
    background-color: #915e5e;
    background-repeat: no-repeat;
    background-size: cover;
    height: 100%;
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    color: white;
    background-color: #0000008a;
    width: 400px;
    border: 3px solid #8d7d7d;
    padding: 20px;
    border-radius: 10px;
    box-sizing: border-box;
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 8px;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.remember-me {
    display: flex;
    align-items: center;
}

button[type="submit"],
button.cancelbtn {
    width: 100%;
    padding: 14px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    color: #fff;
}

button[type="submit"] {
    background-color: #04AA6D;
}

button.cancelbtn {
    background-color: #f44336;
}

button.cancelbtn a {
    text-decoration: none;
    color: white;
}

button:hover {
    opacity: 0.8;
}

.button-group {
    display: flex;
    flex-direction: column;
}

.cancel {
    margin-top: 10px;
}

.psw {
    text-align: center;
    margin-top: 20px;
}

.psw a {
    color: white;
    text-decoration: none;
}

@media screen and (max-width: 400px) {
    .container {
        padding: 10px;
    }
}
</style>

</head>
<body>

	<form action="" method="post">
        <div class="container">
            <h1>ADMIN REGISTER</h1>
            <div class="form-group">
                <label for="firstName">First Name</label>
                <input type="text" placeholder="Enter First Name" name="firstName" required>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name</label>
                <input type="text" placeholder="Enter Last Name" name="lastName" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" placeholder="Enter Email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" placeholder="Enter Password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">Confirm Password</label>
                <input type="password" placeholder="Confirm Password" name="confirm-password" required>
            </div>
            <div class="form-group remember-me">
                <input type="checkbox" checked="checked" name="remember">
                <label>Remember me</label>
            </div>
            <div class="button-group">
                <button type="submit">Register</button>
                <div class="cancel">
                    <button type="button" class="cancelbtn"><a href="Index.jsp">BACK</a></button>
                </div>
            </div>
            <div class="psw">have account?<a href="AdminLogin.jsp" style="color: rgb(47, 212, 21);">  Login</a></div>
        </div>
    </form>

</body>
</html>