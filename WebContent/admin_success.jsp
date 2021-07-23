<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="styles/headerfooter.css"/>
	<meta charset="ISO-8859-1">
	<title>Update was successful</title>
<style>
body {
  background-image: url('images/adminsuccess.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
		background-size: cover;
}
.contt{
	background-color:#f0f5f5;
		width: 700px;
		border: 15px black;
		font: 16px;
		padding: 20px 12px 10px 20px;
		outline-style: double;
		outline-color: black;
		float:center;
		opacity:0.8;
		margin: 0 auto; 
		text-align: center;
	
}
</style>
</head>
<body>
<div class="menubar">
			<button type="submit"class="btnlogin" ><a href="#">LogOut</a></button>

			<div class="leftmenu">
				<h1 class="text" >NIWAHANA PROPERTIES</h1>
			</div>
			<ul>
				<li style="font-size:20px"> <a href="home.jsp"> Home </a> </li>
				<li style="font-size:20px"> <a href="allProperties.jsp"> Properties </a> </li>
				<li style="font-size:20px"> <a href="About.jsp">About Us </a> </li>
				<li style="font-size:20px"> <a href="services.jsp">Services </a> </li>
				<li style="font-size:20px">  <a href="contactus.jsp">Contact Us </a> </li>
			</ul>
		</div>
		<hr>
	
	<br><br><br>
	<div class ="contt">
	<form action="backtoadminhome" method="post" align="center">
		<h1>Process is successful</h1>
		<input type="submit" name="backbtn" value="Go back to Payment Admin Home-Page">
	</form>
	</div>
		<br><br><br><br>
		<br><br><br><br>
		<br><br><br><br>
		<hr>
		
		
		
		
		
		
		
		
		
		
		
		<div>
			<footer class="footer">
				<div class="cont">
					<div class="col">
						<div class="card">
							<h2>About Us</h2>
								<p>We're excited to offer some quality properties.
									The Niwahana Properties(Pvt) Ltd is one of the leading companies in the real estate sector in Sri Lanka.
									We have over 20 years experience in real estate.</p>
						</div>
					</div>
		 
					<div class="col">
						<div class="card">
							<h2>Find Us </h2>
								<p> Facebook: Niwahana Properties<br>
									Instagram : niwahanalive<br>
									Email: inquire@Nproperties.com <br>
								</p>
						</div>
					</div>
		 
					<div class="col">
						<div class="card">
							<h2>Location</h2>
								<p> No 14/2,<br>Athurugiriya road,<br>Malabe.<br></p>
						</div>
					</div>
		 
					<div class="col">
						<div class="card">
							<h2>Hotline</h2>
								<p>+94 355 584 894<br>+94 445 236 777<br>+94 558 326 256<br></p>
						</div>
					</div>
				</div>
			</footer>
		</div>
	
</body>
</html>