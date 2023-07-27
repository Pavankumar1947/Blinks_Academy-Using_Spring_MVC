<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminLogin</title>
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
    height: 100%;
    background-image: url("../images/background.png");
    background-color: #915e5e;
    background-repeat: no-repeat;
    background-size: cover;
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
}

.navbar {
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 1rem;
    background-color: #333;
    color: #fff;
}

.logo {
    display: flex;
    align-items: center;
}

.logo img {
    width: 50px;
    height: 50px;
    margin-right: 1rem;
}

.logo h1 {
    font-size: 1.5rem;
}

.nav-links {
    list-style: none;
    display: flex;
    margin: 0;
    padding: 0;
}

.nav-links li {
    margin-right: 5.5rem;
}

.nav-links a {
    text-decoration: none;
    color: #fff;
    padding: 0.5rem;
    transition: background-color 0.3s ease;
}

.nav-links a:hover {
    background-color: #555;
    border-radius: 10px;
}

.nav-links a:active {
    background-color: #777;
}

.container {
    color: white;
    background-color: #0000008a;
    width: 400px;
    height: 500px;
    border: 3px solid #8d7d7d;
    padding: 20px;
    border-radius: 10px;
    box-sizing: border-box;
}

h1 {
    text-align: center;
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
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.remember-me {
    margin-bottom: 20px;
}

button[type="submit"],
button.cancelbtn {
    width: 100%;
    padding: 14px;
    margin-bottom: 10px;
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
    text-decoration: none;
    background-color: #f44336;
}

button.cancelbtn a {
    text-decoration: none;
    color: #fff;
}

button:hover {
    opacity: 0.8;
}

.cancel {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
    text-decoration: none;
}

.psw {
    text-align: center;
}

.psw a {
    color: #000;
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
            <h1>Login</h1>

            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" required>

            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required>

            <div class="remember-me">
                <input type="checkbox" checked="checked" name="remember">
                <label>Remember me</label>
            </div>

            <button type="submit">Login</button>
            <div class="cancel">
                <button type="button" class="cancelbtn"><a href="Index.jsp">BACK</a></button>
            </div>
            <div class="psw">Dont have account?<a href="AdminSignUp.jsp" style="color: rgb(49, 182, 20)"> Register</a></div>
        </div>
    </form>

</body>
</html>