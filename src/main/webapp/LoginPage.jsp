<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href='https://fonts.googleapis.com/css?family=Alef'rel='stylesheet'>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"integrity="sha512-..." crossorigin="anonymous">
<link rel="icon" type="image/png"href="https://cdn-icons-png.flaticon.com/512/1613/1613056.png">
<link rel="stylesheet"href="https://fonts.gogleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/2f4be6bad1.js"></script>

<title>Signup-Login</title>
<style>
body{
	user-select: none;
}
body {margin: 0;padding: 0;font-family: 'Alef';}
.fa {font-size: 20px;width: 30px;text-align: left;text-decoration: none; }
.fa:hover {opacity: 0.7;}
.fa-facebook {background: #3B5998;color: white;}
.fa-twitter {background: #55ACEE;color: white;}
.fa-instagram {background: #ff6600;color: white;}
.navbar a {float: left; padding: 10px; color: white;text-decoration: none;font-size: 17px;margin-left:10px; text-align:center; margin-top:15px; font-size: 25px;background-color: #125688;}
.navbar {overflow: hidden;background-color: #125688;}
.navbar a {float: left;font-size: 20px;color: white;text-align: left;padding: 10px 9px;text-decoration: none;}
.dropdown {float: left; overflow: hidden;}
.navbar a:hover, .dropdown:hover .dropbtn { background-color: inherit;}
.dropdown-content {display: none;position: absolute; min-width: 160px;box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);z-index: 1;}
.dropdown-content a {float: none;padding: 12px 16px;text-decoration: none;text-align: left;}
#abc {background-color:white;border: none;color: black;padding: 16px 32px;text-align: center;font-size: 16px;margin: 4px 2px;transition: 0.3s;width:280px;border-radius: 15px;margin-left: 120px;}
#abc:hover {background-color:mediumseagreen;color: white;}
#qew{background-color:mediumseagreen;border: none;color: black;padding: 10px 22px;text-align: center;font-size: 16px;margin: 4px 2px;transition: 0.3s;border-radius: 25px;margin-left: 120px;}
#qew:hover {background-color:tomato;color:white;}
#but{font-family:sans-serif,serif;font-size:small;font-style:italic;margin-left:45px}
.hero { background-image: url('https://t4.ftcdn.net/jpg/06/06/54/69/240_F_606546933_RSwbMxsNEIrbZHAypRwxO09sRutgj6sg.jpg'); background-size: cover;background-position: center; height: 500px;display: flex;align-items: center;justify-content: center;text-align: center; }
.hero-content {color: #fff;}
.hero-content h2 {font-size: 2.5rem;margin-bottom: 1rem;}
.hero-content p {font-size: 1.2rem;margin-bottom: 1.5rem;}
.hero-content .btn {display: inline-block; padding: 0.8rem 1.5rem;background-color: #000;color: #fff;text-decoration: none;border-radius: 4px;transition: background-color 0.3s ease;}
.hero-content .btn:hover {background-color: #555;}
</style>



</head>
<body style="background-image: url('https://img.freepik.com/premium-photo/businessman-man-hand-holding-earth-icon-digital-globe_150455-21119.jpg?w=1380');
	background-repeat: no-repeat;background-size: cover;background-position: center; height:650px;">
<div style="border: 1px  ;height: 35px; background-color: ">
	<div>
        <a><img src="https://www.testyantra.com/sites/default/files/tylog1.png" style="height: 20px;
        	margin-top: 5px;text-align: justify;margin-left: 50px;" alt="logo"/> </a>
        <span style="margin-left: 230px;font: bold;font-size: 25px;color: orange;">SPIDERS </span>
        <span style="font: bold;font-size: 20px; color: white;">TRAINING INSTITUTE</span>
        </div>
</div>

<div class="navbar">
  	<a href="Course1.jsp"><i class="fa fa-fw "></i>COURSES</a> 
  	<a href="Portfolio.jsp"><i class="fa fa-fw "></i>PORTFOLIO</a> 
  	<a href="Contact.jsp"><i class="fa fa-fw "></i>CONTACT</a> 
  	<a href="Services.jsp"><i class="fa fa-fw "></i>SERVICES</a> 
  	<a href="Placements.jsp"><i class="fa fa-fw "></i>PLACEMENTS</a> 
  	<a href="PNF.jsp"><i class="fa fa-fw "></i>BRANCHES</a>
  	
  	

  	
  	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm0pSRqKxgsTobfBWesu_fCwwE9vvL1BISvg&usqp=CAU"  alt="logo"/ style="height: 60px;
        margin-top: 5px;margin-left: 200px; border-bottom-left-radius: 30px;">
    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAA9lBMVEX////ym0wAAAD8/Pz//v3//v/zm0v0mkz//fzym07//f/0mkv9//7//vv8/////fv/+fXxlDnzlkHy8vL+9+/ykTbzqGbykC/xnEnxmEWysrLt7e2np6efn58+Pj753cn5za16enrPz8+9vb2VlZX77uH65tb88+f4xaTzkjvuljzzs330rHL51rwjIyPd3d1KSkpWVlYsLCzzvZD3u432jjDzpF37z7b21rnrnk/vp2X4tIP769f75Mz4u4/42r32q3YUFBRkZGThkj9FJRBvQyWRXy2TZj61dTj/pVDOhkTikks0IBNePh2FVi6obTzRo31+SQ/mAakiAAAOjElEQVR4nO2dCXfbNrbHSQEgCQIgCYQUiXSm0rTVanvaqVwvSZx2OvPmTWaf7/9l3oXk2IQoW7StmLQffsc9OUlPePjnBe6C5cbzHA6Hw+FwOBwOh8PhcDgcDofD4XA4HA6Hw+FwOBwOh8Ph+H8Gx5jAz5r1b731r6+IOBaGKAUiUCm494oURhGOBDaCPovCRiQ2dPleh2CjCntJkmWzydXVaM10MsvzTHicC9H1Gz4J7gkskBdl+XS8GqpS1hkejUd5FiVCmPnIX6At4ZUxEXGcT+fDUi6U1jo0MBYGjDG9XEpZ0hWoJAInSdev+wjSBIsonx6BEB1ozUJKA39DQIG1WK0W8miUG0uirl/4wUReNluBOtDmh4FPqzD0PxMAPgsCGrJKK1mcTjL+gmIHuEeOoiSbHpcwNJm/BwqC1U/DUS7A6PDT9eu3IElSCH2jYbEMYebpfQorGLNgyOJslIFnivo/IYlIcRJNjsul1jDzArrfhlUV0kDp4myaJvELsGHKcb76yciDiQYjcL8NQST8x3xdHuUR7/r97wdyT+6lIyXNWz+CpTyPiBD9jY1EkIjnp6UGVxnu19OE+eW7GUH9VeglIplWRcj8R+mDEcuY1KP+ZuTE49FFqYJLcKHB3vm3izCsqC7naT9jY5qkPJ2XO6ND5ZssBkbhNfABgs2fNKHG4SSihx4nESR7X4R0l/HAWQaabVQZwBFRo3SXwsDX8izn/YsaRCT5UO5+aV8bSX7A9DUwiiGa3OFvQ1qpy5nXtzyVoDgfFmynBeGlAx0oSLKLa6RUSt1hw5CysFrQSdIricLDPD9eNOSFFGbcJdWQXZdnpxdXUPhmOTAZjefvSrlULAipbkYWRuXljKe8Pw4nEV52XFTNN9XgG5Uq1OloliGChRA8iiKcwKAWUDhSqSrtNxVWQVXQGe+RFSMSHUk/bLwplEdayvfTPPVi+AE2q22Ccx7HXpp9WKmFas5HmKd0Mcz7Y0JPxHMZBtW2Pj/Qy3IM8kTsCS4EMckKiOMegQwbYTB9lF9o2YgwNKyYX5yKfkgUsSDkqmx4DZhhoSrnOZR86e43Xf8pibNzJU0WFNrTOKzKsUBJD+YiVK3RbKmaeRrV8mjGYd7dm2eiRMT5qtTU17YjBhdUfvB6EBYJ5yQbLhpD1NdqORLR/oEGFhbxlEod2rUkPFDRHPfA22ARj6W+bHiL4njmCcSjvQ8gOCEi+7id71FNw8V7tP/vf3FwNCm3C11NVblK26clXODkBEaqpvXpDJ6qHMEgxh3nqEi8k/5WKUFZeUIikbT2EjjFyVQqWtkrV6FmOep8f4P8/JO/vVqhyqvkgblzmiZTvbi0Y2NF5TztOPAjkjNtLGh5mvLKiyGuP6hWhy8yWS6oNRtDpssZSb/Uy7dBED5eMOu7Uz8sR170CDePkg8mavi3dSPToXovuvSnIkI5zB5r7jBajhPuPWrdEzIHXR/vUCqH5QQyos4gMUSKYMuGi1ORosct7PJ4vDBbNzfeNGTh8ijqcCZCgbCEmtD2MjQnJpN7zPMiLz2GuvHmeSAwhJmYdqYQ6vqTwvIMFWXyQ/LojDkRyUyFW+nRYiXSOzLbLw4S2Zbv8wM55+jx8wbH3qi05zX1ZY47c6diWlgjlFHlZ+njV5F4Inj+y9L6ajAqpl5HComHV8utkqcYQTXx6CwLc4L5pLTqlICxVdKJQo7Bzyg7XQ7VMCNPdAs8Xi1Zbb0gCNQi72TXjUPWcgU1j+VHi+mTXYKIJwXzbyup0NdylMQdZN84ieOPKrS8gjrLnrzygDxxumS3q1PgvdRpHHdR63ORV8quy+XP5Kn5ByZcTGUts9FQKao87iAkYs4ni9rKQxhUenmAHU6oo7IzRevHGnx53sXmd+qRE/jW9miKnr5LjRERF3UXDQr10V2rWV+SyItO6640CA/jETB8OwgYN4kNVPo+U3kHniZC2Zmuf2oIzTORPl1hkibZ8NZHV0ZhOTnEKz+QmOfSVDe1uHWURuIgEyadS8tHB/LkEI99INibWArDYDlOD3WY8qqw8xo572DNjXujBaudSIBpOIXJeQiJSMzslf5AHWfP72k4Ol+wWmQOWDGDKXQQhXFmr6EzRrMDPPeBb0HE3K6cVJCLA2XIUXakrGdrmfPnzr4JTj9ab+FD1n0ghShOV7ZCcNPPr1Bkx9ZbMPU+PdTJwpiM7WcHxfTZN2lA4dB6i0DNRXqg78y9E2k92+9CoQdhuf4WWs7jQ/m7KBnJoLZeQyFdenJO/1AIbygcH8yh4x0Kn333oqEwUOODPbwfCrdHaSDHB3uJnaO0Cxva/k7Po0N6GnuduRg9e4XYiBbh8uNBo0VdIYVo8fwKUXpqK3xAxN+zJAER/6OtkBWTZ1eIkPi4tBSG1aEUrrM2S6EuZk9dpXw4kHnLem0B3zlHUbv7S2/u/98oze1bDEFQHCznbQ/yRqDwdp0G/N3Ea7MQhdCb371B91kE4Zl9AinQZ9mz56UQGaayXj1RvTz3cJtCFaG3390vMZlKawOKqdP0UH66PRHOLYUVpN5xqz0LhL4afHvvXARXuh1ro/TZj0cJbJY19e3+LwzTPG2VPSLv7eCbuyRuVqLswqwquzjALzCCAvF2h9ucz54S3EohevP7wfd3SDSribNya7eAzjpY8yaxOFnUjhWYFeGPUbvtBWPEH7/aPRUx8gR4aWseQunZxb4FEpMirCustM7bVXEwE/84+MNub2NW9YfaPm+8POFdnGxPea51ZY0mOcItbQhGHHyHdknkPJoUurr5dBQiUpk/5nzOkwGX8FHZx17VMG85TM1MHLzdZRhQuFK1vScaQDTMUQe7wObENsR86yyNLqbt/vLGiDsdairyQt8eOFnvWowF72DfggguMrl1MsSs3LaaMCYmAjscKjFL+jSs++hi4qFOTmCC0zNb7nVYMSU8bpGbgrDfgMI/fmVJJJ4QsZ2xhSGFooWnHd3YE1P73AQEjGEWtRpR10b8wXKonIg4e2/dTAl9tryIumougXjm2+veVVVe8Fa7pNdGHPyu7lBxzPG0tG4vhuBJJ57o6Mg+IsJe16SBqVV5q3W/ayMOflMfpyLO/aV1Jir09TBLxEH2Qx4BisDvUfuuzHJoWnp4e0fqZyPWk3ASo/f1G1+my0QAOWl3CBytFhW1HGq4WMWCtDij/9mINYcq+EkZsNsvZhSqy6xdGvFFEITkBau25mL5cxsbGlm/3Ui8dahTc0vatxQWoy5OC32GJF46V3bUN7vuV60Oot0Y8euNRJRMlDLPojWFjGao04sziORL1rgRJKc85ntPQoMTvTbir8gEVzKrCnvEB1QXV7j9pYYvQzIuGvdlFsU0gfff9+1vjDj4zsidVIut28+h1sO0XfT5gkTbBfn605ejxIv2eXgIhd9dS3zrxR8CRZlV+ULsMbEw7rgbCMYfym0bsoqVJy2mz60RB99fFesPZY/S5TyN4q57SSUinqtq61oQ/K48zUQU3+9xakYc/Eldbt1qUP6S5feuyT0PWJDsTDUu5/lMXk4Fj+5/wZoR/3xZ2QcdmU9hrPfihmWaTsqmP62YLle5AC95T9pcN+L/fNK2QF0cRb3o5gJxAVKRxl3eCmLZQv2cJ/fs7qO6EQd/+WQ/YXGZ9aZ5RExWha+bHU1CJel5HgvT1gyLTZ6z3unE5soh8SBqZqP/vZH410/+Zr8CpqCmy+NZf1oqmev4C785UhkNtJTzSU64EJCspp/BqYgEF+lsrCW9UTj423XSDVOQFmd516G+TkryM6UbkR8yFMbCZXk2nuZpAhUQxsL0SgT3H6X55Py4lFp9+sutxL9vfE3lU+nPvOc/6XU3cSRAYrNzQBUGNKwCvZDqaHw1MR0jssx0UByNT02rOl3RkF7eKvxHtV5GDOlCTZIu76w1IYhPfEi6ti8tbQi0aY0hJZiMXlJmOoBI02ZwMyTrRvynGdqm1UTPOn94ZunNm52prbuIN6PV9KRZ925hRqw2e56mMtr8P1Yz4uBfn8LAX+hJ77q3gMSI5O8Wu/vTwNhbb8OZ/nowbteRfd1ZcD1Xg7BmxMG/P4WymuzJFDpBQA2QHe3uorRpLGTsFvgBKAquu0OuRzDM07oRB3+T7zKv25rwTiAcjEsWwIAM72g2dAf1mTgY/Cfv3Ry8gaTJSC4qs370oH5m1d/rCu/cWuwBqUBx/kuhH2pD9ulfdYW/v2NrsQckHkciO5fqgQpD+ifLiHdsLfaENMGz96WGxItVNGz2HdrGuNRqy4j2SnjfMH1W46szqU1bXXpH868tkXR7Jtor4T0DisGI4+yElipodlZqYnqAMqYX/7Ul3nlWo3uwcakxFP4nZ2ans4UNzQ4hvfjGVthnh7qB4CSfHklIP683wmFmVtfzLtj8qkN/0w+6PB7lBP26JbG/DvUahFMsZhfDEjwr5KOs1tDDXCk0eYGu1q3qxrPMS5G3bcSve+1QDdhLTGu22ehImy6CIFN97n25tqnWslwenedZHKWcc/TmD1sSf+2zQ/XW8zEFgVDaR/lstPrFVE8L0y8RWPdOPF6dTHJhljPgB8dNI25Wwl8EhHtplueT6ejkfAxcrP/pgCz16ofVUNOIe8739QiURmDQ9Y4iIZgTs6HLhcBRXQDaYcQ+xwybBIorhKIIw3xb/3sQMWl20gUj/tCQ2PuYcQ3MM2LaJcYkxhBHzD+bAGK3Ne4y4l3n+14mO4243lp8LeycieZ8X9cvdjjAiF83Jb59MTGjBTuN+HIcagt2G3Hwzas3Yv+T8PbsNOKPr2mYgpRvG850zx2iFwYY8UfbgN+/JlfqrWPit1sGfF0Ct4z49feo5zXiY6gZ8bevz4CGzUWFtQH3X8V8mVwb8ZUa0LC+MvSDcaGvVOD6BuYrNuANr13f6xfocDgcDofD4XA4HA6Hw+FwOBwOh8PhcDgcDofD4XA4HA6Hw9Fn/g8v5AlHuW3zjwAAAABJRU5ErkJggg==" 
        alt="logo"/ style="height: 60px;margin-top: 5px;margin-left: 5px;">
    <img src="data:image/png;base64,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" 
     alt="logo"/ style="height: 60px;
        margin-top: 5px;margin-left: 5px; border-bottom-right-radius: 30px;">

</div><br>
<h1 style="color: blue;font-size: 40px;text-align: center;" >${msg}</h1><br>

<div>
<h2><i style="margin-left: 240px; color: red; ">LOGIN HERE</i></h2>
	
	<div id="but">
	<a href="ManagementLogin.jsp"><button id=abc>Login As
			MANAGEMENT</button></a>
	<br>
	<a href="HrLogin.jsp"><button id=abc>Login As HR</button></a>
	<br>
	<a href="StudentLogin.jsp"><button id=abc>Login As STUDENT</button></a>
	<br><br>
	<b style="color:white;margin-left: 120px;"><u>Don't have an account?</u></b> <br><br>
	<a href="SignUp.jsp"><button type="button" id=qew> SignUp </button></a>
	<a href="Index.jsp"><button type="button" id=qew> Back </button></a>
	</div>
</div> 

</body>

</html>

