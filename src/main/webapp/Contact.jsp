<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact</title>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.css" rel="stylesheet"/>
  	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>
  	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
  	<script src="https://kit.fontawesome.com/2f4be6bad1.js" crossorigin="anonymous"></script>
  <style type="text/css">
  	@import url('https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600&display=swap');

:root{
   --green:#00E77F;
   --white:#fff;
   --light-white:#aaa;
   --black:#3d3d3d;
   --light-bg:#4b4b4b;
}

*{
   font-family: 'Rubik', sans-serif;
   margin:0; padding:0;
   box-sizing: border-box;
   outline: none; border:none;
   text-decoration: none;
   transition: .2s linear;
   text-transform: capitalize;
}

*::selection{
   background-color: var(--white);
   color:var(--black);
}
body{
   background-color: var(--black);
}

body{
	user-select: none;
}

.image{
background-image: url("..Images/contact-img.svg"); 
}

section{
   max-width: 1200px;
   margin:0 auto;
   padding:1.5rem;
}

.btn{
   display: inline-block;
   margin-top: 1rem;
   border-radius: 4rem;
   background-color: var(--light-bg);
   cursor: pointer;
   color:var(--white);
   font-size: 1.8rem;
   padding:1rem 3rem;
}

.btn:hover{
   background-color: var(--white);
   color:var(--black);
}

.heading{
   margin-bottom: 2.5rem;
   text-align: center;
   font-size: 3rem;
   color:var(--white);
   text-transform: uppercase;
}

.heading span{
   color:var(--green);
   text-transform: uppercase;
}

.contact .row{
	display: flex;
	align-items: center;
	flex-wrap: wrap;
	gap:1.5rem;
 }
 
 .contact .row .image{
	flex: 1  15rem;
	margin-left: -100px;
	/* position: relative; */
 }
 
 .contact .row .image img{
	width: 100%;
 }
 
 .contact .row form{
	flex:1 1 30rem;
 }
 
 .contact .row form .box{
	width: 100%;
	margin-top: 1rem;
	margin-bottom: 1.5rem;
	border-radius: .5rem;
	background-color: var(--light-bg);
	font-size: 1.2rem;
	color:var(--white);
	padding:0.4rem;
	text-transform: none;
 }
 
 .contact .row form span{
	font-size: 1.4rem;
	color:var(--light-white);
 }
 
 .contact .row form .radio{
	margin-top: 1.5rem;
	margin-bottom: 1rem;
 }
 
 .contact .row form .radio label{
	font-size: 1.6rem;
	color:var(--light-white);
	margin-left: .5rem;
	cursor: pointer;
 }
 
 .contact .row form .radio #female{
	margin-left: 2rem;
 }
 
 .contact .row form .radio input{
	appearance: none;
	height: 1.5rem;
	width: 2rem;
	background-color: var(--light-white);
	cursor: pointer;
 }
 
 .contact .row form .radio input:checked{
	background-color: var(--green);
	border-radius: 5rem;
 }
 
 .contact .row form .radio #male:checked ~ label[for="male"]{
	color:var(--green);
 }
 
 .contact .row form .radio #female:checked ~ label[for="female"]{
	color:var(--green);
 }
  </style>
</head>
<body>
	
	       
<section class="contact" id="contact">

    <h1 class="heading"><span>contact</span> us</h1>
 
    <div class="row">
 
       <div class="image">
          <img src="https://img.freepik.com/premium-photo/3d-call-center-employee-pointing-aside-blank-space_168450-172.jpg?size=626&ext=jpg&ga=GA1.2.1649019628.1680056459&semt=ais" alt="">
       </div>
 
       <form action="" method="post" >
 
          <span>your name</span>
          <input type="text" required placeholder="enter your full name" maxlength="50" name="name" class="box">
          <span>your email</span>
          <input type="email" required placeholder="enter your valid email" maxlength="50" name="email" class="box">
          <span>your number</span>
          <input type="number" required placeholder="enter your valid number" max="9999999999" min="0" name="number" class="box" >
          <span>select course</span>
          <select name="couses" class="box" required>
             <option value="" disabled selected>select the course --</option>
             <option value="web developement">web developement</option>
             <option value="Java Full Stack">Java Full Stack</option>
             <option value="MERN Stack">MERN Stack</option>
             <option value="digital marketing">digital marketing</option>
             <option value="graphic design">graphic design</option>
             <option value="teaching">teaching</option>
             <option value="Devops">Devops</option>
             <option value="data analysis">data analysis</option>
             <option value="artificial intelligence">artificial intelligence</option>
          </select>
          <span>select gender</span>
          <div class="radio">
             <input type="radio" name="gender" value="male" id="male">
             <label for="male">male</label>
             <input type="radio" name="gender" value="female" id="female">
             <label for="female">female</label>
          </div>
          <input type="submit" value="send message" class="btn" name="send">
       </form>
 
    </div>
 
 </section>
        

</body>
</html>