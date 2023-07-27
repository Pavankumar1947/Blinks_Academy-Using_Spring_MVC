<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Portfolio</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600&display=swap');

body{
	user-select: none;
}

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

.extra {
	width: 100%;
}
.extra p {
	padding: 30px;
	padding-bottom: 250px;
	font-size: 50px;
	text-align: center;
	color: #fff;
	background-image: linear-gradient(rgba(0,0,0,0),rgba(0,0,0,0.7)),url("https://img.freepik.com/free-vector/group-business-people-isolated-different-people-with-different-styles-simple-flat-cartoon-style_1150-40166.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=ais");
	background-size: cover;
	background-attachment: fixed;
	font-family: cursive;
	z-index: -9;
}
.smbox {
	display: flex;
	flex-wrap: wrap;
	transform: translateY(-100px);
	justify-content: center;
}
.smbox span {
	margin: 1%;
	background: #fff;
	box-shadow: inset 0px 0px 25px rgba(0,0,0,0.2),
						0 0 40px rgba(0,0,0,0.3);
	border-radius: 10px;
	padding: 30px 50px;
	cursor: pointer;
}
.smbox span:hover {
	transform: scale(1.3);
	transition: .5s ease;
}
.smbox .data {
	font-size: 80px;
	color: #FA6146;	
}
.smbox .det {
	font-size: 20px;
	color: #272529;
	font-family: cursive;
}

.content p{
    padding: 30px;
	
	font-size: 20px;
	text-align: center;
	
	
	font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
	

}

.swiper-pagination-bullet{
	background-color: var(--white);
 }
  
 .swiper-pagination-bullet-active{
	background-color: var(--green);
 }


 .reviews-slider .slide{
	border-radius: .5rem;
	background-color: var(--light-bg);
	padding:2rem;
	margin-bottom: 4rem;
	user-select: none;
 }
 
 .reviews-slider .slide p{
	line-height: 2;
	font-size: 1rem;
	color:var(--light-white);
 }
 
 .reviews-slider .slide .user{
	display: flex;
	align-items: center;
	gap:1.5rem;
	margin-top: 1.5rem;
 }
 
 .reviews-slider .slide .user img{
	height: 7rem;
	width: 7rem;
	border-radius: 50%;
	object-fit: cover;
 }
 
 .reviews-slider .slide .user h3{
	font-size: 2rem;
	color:var(--white);
	margin-bottom: .7rem;
 }
 
 .reviews-slider .slide .user .stars i{
	font-size: 1.5rem;
	color:var(--green);
 }

 .swiper-slide{
	width: auto;
	border: 1px solid grey;
	margin-left: 20px;
	
 }

 .swiper-wrapper{
	display: flex;
	
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

.teacher .box-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(13rem, 1fr));
	gap: 0.5rem;
}

.teacher .box-container .box {
	background-color: var(--white);
	box-shadow: var(--box-shadow);
	border-radius: .5rem;
	position: relative;
	overflow: hidden;
	text-align: center;
}

.teacher .box-container .box .image {
	position: relative;
	overflow: hidden;
	
}

.teacher .box-container .box .image img {
	background-color: var(--secondary);
	width: 90%;
	height:80%;
	justify-content: space-between;
}

.teacher .box-container .box:hover .image .share {
	bottom: 0;
}

.teacher .box-container .box .image .share {
	position: absolute;
	bottom: -10rem;
	left: 0;
	right: 0;
	padding: 2rem;
}

.teacher .box-container .box .image .share a {
	height: 3rem;
	width: 3rem;
	line-height: 3rem;
	font-size: 1.5rem;
	margin: 0 1rem;
	color: var(--secondary);
	background-color: var(--primary-color);
	border-radius: .5rem;
	justify-content: space-around;
}

.teacher .box-container .box .image .share a:hover {
	color: var(--green);
	background-color: var(--white);
	border-radius: 70%;
}

.teacher .box-container .box .content {
	padding: 2rem;
	padding-top: 1rem;
	align-items: center;
}

.teacher .box-container .box .content h3 {
	font-size: 2rem;
	color: var(--black);
}

.teacher .box-container .box .content span {
	font-size: 1.5rem;
	line-height: 2;
	color: #777;
}

.teacher .box-container .box .content span:hover{
	color: #00E77F;
	filter: drop-shadow(0 0 20px red);
}



.footer{
	background-color: var(--light-bg);
	text-align: center;
	/* padding-bottom: 7rem; */
 }
 
 .footer .share a{
	margin:0.1rem;
	height: 4.5rem;
	width: 4.5rem;
	line-height: 4.5rem;
	border-radius: 50%;
	font-size: 2rem;
	color:var(--white);
	background-color: var(--black);;
	margin-top: 20px;
 }
 
 .footer .share a:hover{
	background-color: var(--green);
 }
 
 .footer .credit{
	margin-top: 1.5rem;
	padding:1.5rem;
	padding-top: 1.5rem;
	border-top: .1rem solid var(--light-white);
	font-size: 2rem;
	color:var(--light-white);
 }
 
 .footer .credit span{
	color:var(--green);
 }
</style>
</head>
<body>
<div class="diffSection" id="portfolio_section">
            <p style="font-size: 50px; text-align: center;">Portfolio</p>
            <div class="content">
                <p>
                    “Education is the passport to the future, for tomorrow belongs to those who prepare for it today.” “Your attitude, not your aptitude, will determine your altitude.” “If you think education is expensive, try ignorance.” “The only person who is educated is the one who has learned how to learn …and change.”
                </p>
            </div>
        </div>
        <div class="extra">
            <p>We're increasing this data every Month</p>
            <div class="smbox">
            <span><div class="data">2500+</div><div class="det">Enrolled Students</div></span>
            <span><div class="data">4+</div><div class="det">Total Courses</div></span>
            <span><div class="data">2000+</div><div class="det">Placed Students</div></span>
            <span><div class="data">200+</div><div class="det">Total Projects</div></span>
            </div>
        </div>


         <!-- teacher -->

        <section class="teacher" id="teacher">

         <h1 class="heading" style="color: black;">our expert trainers</h1>
         <div class="box-container">
   
            <div class="box">
               <div class="image">
                  <img src="https://img.freepik.com/premium-photo/portrait-indian-male-businessman-standing-white-background_466689-45656.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=sph" alt="">
                  <div class="share">
                     <a href="#" class="fab fa-facebook-f"></a>
                     <a href="#" class="fab fa-twitter"></a>
                     <a href="#" class="fab fa-instagram"></a>
                  </div>
               </div>
   
               <div class="content">
                  <h3>ABHISHEK M</h3>
                  <span>JAVA Trainer</span>
               </div>
            </div>
   
            <div class="box">
               <div class="image">
                  <img src="https://img.freepik.com/premium-photo/portrait-indian-male-businessman-standing-white-background_466689-45656.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=sph" alt="">
                  <div class="share">
                     <a href="#" class="fab fa-facebook-f"></a>
                     <a href="#" class="fab fa-twitter"></a>
                     <a href="#" class="fab fa-instagram"></a>
                  </div>
               </div>
            
               <div class="content">
                  <h3>MANOHAR</h3>
                  <span>MEARN Trainer</span>
               </div>
            </div>
   
            <div class="box">
               <div class="image">
                  <img src="https://img.freepik.com/premium-photo/portrait-indian-male-businessman-standing-white-background_466689-45656.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=sph" alt="">
                  <div class="share">
                     <a href="#" class="fab fa-facebook-f"></a>
                     <a href="#" class="fab fa-twitter"></a>
                     <a href="#" class="fab fa-instagram"></a>
                  </div>
               </div>
            
               <div class="content">
                  <h3>PAVAN REDDY</h3>
                  <span>J2EE Trainer</span>
               </div>
            </div>
   
            <div class="box">
               <div class="image">
                   <img src="https://img.freepik.com/premium-photo/portrait-indian-male-businessman-standing-white-background_466689-45656.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=sph" alt="">
                  
                  <div class="share">
                     <a href="#" class="fab fa-facebook-f"></a>
                     <a href="#" class="fab fa-twitter"></a>
                     <a href="#" class="fab fa-instagram"></a>
                  </div>
               </div>
            
               <div class="content">
                  <h3>SIMON RAJ</h3>
                  <span>SQL Trainer</span>
               </div>
            </div>
   
         </div>
   
      </section>


      <!-- student feedback -->


      <section class="reviews" id="reviews">

            <h1 class="heading" style="margin-top: 100px;">  <span >student's reviews</span> </h1>

            <div class="swiper reviews-slider">
         
               <div class="swiper-wrapper">
         
                  <div class="swiper-slide slide">
                     <p>I took JAVA FULL STACK course in 4th year of my engineering degree. The tutor explained conecepts using proper examples and implementation. After this course, I worked as a full stack developer and I am currently working as a software engineer at FUBEUS.</p>
                     <div class="user">
                        <img src="https://img.freepik.com/free-vector/head-man_1308-33466.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=ais" alt="">
                        <div class="user-info">
                           <h3>Yaseen</h3>
                           <div class="stars">
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star-half-alt"></i>
                           </div>
                        </div>
                     </div>
                  </div>
         
                  <div class="swiper-slide slide">
                     <p>A very good flatform to learn coding scratch. Being a student from Non-IT stream,the teaching from all the trainers unmatched standards. Learning JAVA mode easy with the increasing curriculam followed by the trainers.</p>
                     <div class="user">
                        <img src="https://img.freepik.com/free-vector/girl-safari-costume-cartoon-character_1308-78487.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=ais" alt="">
                        <div class="user-info">
                           <h3>Kavya</h3>
                           <div class="stars">
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star-half-alt"></i>
                           </div>
                        </div>
                     </div>
                  </div>
         
                  <div class="swiper-slide slide">
                     <p>Being graduated as Mechanical getting a job into IT it was a biggest challenge to me. So i joined Jspiders in the month of September.I learnt java, sql, web tech and React in the most funny and interactive way . I thanks to <b>RAHUL SIR  & my Presentation Team</b> for helping me out to achive my Dreem.  </p>
                     <div class="user">
                        <img src="https://img.freepik.com/free-vector/head-man_1308-33466.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=ais" alt="">
                        <div class="user-info">
                           <h3>Harish</h3>
                           <div class="stars">
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star"></i>
                              <i class="fas fa-star-half-alt"></i>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="swiper-pagination"></div>
            </div>
         </section>

         <!-- footer section starts  -->

<footer class="footer">

   <section>

      <div class="share">
         <a href="" class="fab fa-facebook-f"></a>
         <a href="" class="fab fa-twitter"></a>
         <a href="" class="fab fa-linkedin"></a>
         <a href="" class="fab fa-instagram"></a>
         <a href="https://www.youtube.com/@HEY_INFO" class="fab fa-youtube"></a>
      </div>

      <div class="credit">&copy; copyright @ 1947 by <span>pavan Pushpa</span> | all rights reserved!</div>

   </section>

</footer>

</body>
</html>