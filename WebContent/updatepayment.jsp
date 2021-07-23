<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="styles/headerfooter.css"/>
	<meta charset="ISO-8859-1">
<title>Payment Management</title>
</head>
<style>
body {
  background-image: url('images/update.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
		background-size: cover;
}
.capitalize{
	color: white;
}
.formcontent{
	margin: 0 auto; 
	width:700px;
	text-align: center;
}
form{
		background-color:#f0f5f5;
		width: 700px;
		border: 15px black;
		margin: 20px;
		font: 16px;
		padding: 20px 12px 10px 20px;
		outline-style: double;
		outline-color: black;
		float:center;
		opacity:0.8;
	}
.idper{
box-sizing: border-box;
  border: 2px black;
  border-radius: 4px;
  background-color:#75a3a3;
  color: white;
}
	
</style>
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
	<hr color="black">
	
		<!-- get the details passed from parameter from the url of the paymentaccount.jsp page -->
		<%
			String propertyname=request.getParameter("propertyname");
			String paymentid = request.getParameter("paymentid"); 
			String name = request.getParameter("name");
			String cardno = request.getParameter("cardno");
			String cardexpdate = request.getParameter("cardexpdate");
			String cvc = request.getParameter("cvc");
		%>
		
		<h1 align="center" class="capitalize">Update Payment Details</h1> 
		
		<div class="formcontent">
			<form action="update" method="post">
				Property Name: 
				<input type="text" name="propertyname" style="width:20%" value="<%= propertyname %>"><br><br>
				Property ID:  <!-- paymentid is unique auto-incremented -->
				<input type="text" class="idper" name="paymentid" style="width:20%" value="<%= paymentid %>" readonly><br><br>
				Customer's Name: 
				<input type="text" name="name" style="width:60%" value="<%= name %>"><br><br>
				Card Number:
				<input type="text" name="cardno" style="width:60%" value="<%= cardno %>"><br><br>
				Card Expire Date: 
				<input type="text" name="cardexpdate" style="width:30%" value="<%= cardexpdate %>"><br><br>
				CVC: 
				<input type="text" name="cvc" style="width:20%" value="<%= cvc %>"><br><br><br>
				<input type="submit" name="submit" value="Update The Data">
			</form>
		</div>
		
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
		<div> 
</body>
</html>