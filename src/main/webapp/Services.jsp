<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Services</title>
<style type="text/css">
	.service-swipe {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
	background-image: linear-gradient(rgba(0,0,0,0),rgba(0,0,0,0.7)),url("https://img.freepik.com/free-photo/programming-background-with-person-working-with-codes-computer_23-2150010125.jpg?w=996&t=st=1689148548~exp=1689149148~hmac=ed29c092aecb8cb625fdd5e6413e49f6c45b0a3956f0d763cd0d7da981b53504");
	background-size: cover;
	background-attachment: fixed;
}

body{
	user-select: none;
}
.service-swipe .s-card img {
	width: 100px;
}
.service-swipe a {
	padding: 0;
	margin: 40px 10px;
}
.service-swipe .s-card {
	display: flex;
	justify-content: space-around;
	padding: 10px;
	align-items: center;
	text-align: center;
	width: 350px;
	height: 200px;
	box-shadow: inset 0 0 20px rgba(255,255,255,0.05),
					0 0 50px rgba(0,0,0,0.8);
	border-radius: 5px;
	cursor: pointer;
	transition-duration: .5s;
}
.service-swipe .s-card p {
	color: #f2f2f2;
	font-size: 1.2em;
	font-family: 'Open Sans',sans-serif;
}
.service-swipe .s-card:hover {
	box-shadow: 0 0 50px rgba(255,255,255,0.8);
	transform: translateY(-10px);
}
</style>
</head>
<body>
	<div class="service-swipe">
            <div class="diffSection" id="services_section">
            	<p style="font-size: 50px; padding: 100px; padding-bottom: 40px; color: #fff;">Services</p>
            </div>
            <a href="PNF.jsp"><div class="s-card"><img src="https://cdn-icons-png.flaticon.com/512/1147/1147957.png?w=740&t=st=1690368836~exp=1690369436~hmac=a834764b8143b33bb17981a76b7c41286d560d96e98e96261f657b8aef404b79"><p>Free Online Courses</p></div></a>
            <a href="PNF.jsp"><div class="s-card"><img src="https://img.freepik.com/free-icon/success_318-577402.jpg?size=626&ext=jpg&ga=GA1.2.1649019628.1680056459&semt=ais"><p>Building Concepts for Exams</p></div></a>
            <a href="PNF.jsp"><div class="s-card"><img src="https://img.freepik.com/free-icon/video-call_318-488691.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=ais"><p>Online Video Lectures</p></div></a>
            <a href="PNF.jsp"><div class="s-card"><img src="https://img.freepik.com/free-icon/clipboard_318-316876.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=ais"><p>Sample Papers of Various Drives</p></div></a>
            <a href="PNF.jsp"><div class="s-card"><img src="https://img.freepik.com/free-icon/web_318-674338.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=ais"><p>Performance and Ranking Report</p></div></a>
            <a href="PNF.jsp"><div class="s-card"><img src="https://cdn-icons-png.flaticon.com/512/609/609116.png?w=740&t=st=1690369366~exp=1690369966~hmac=a99d61d76f375f2e5a0c4816416ec4fb86be40f793ff7b39eed8acf53f4f8c2e"><p>Discussion with Our Tutors & Mentors</p></div></a>
            <a href="PNF.jsp"><div class="s-card"><img src="https://img.freepik.com/free-icon/creative-idea_318-685622.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=ais"><p>Daily Brain Teasing Questions to Improve IQ</p></div></a>
            <a href="PNF.jsp"><div class="s-card"><img src="https://img.freepik.com/free-icon/team_318-226535.jpg?size=626&ext=jpg&ga=GA1.1.1649019628.1680056459&semt=sph"><p>15x7  Support</p></div></a>
        </div>

</body>
</html>