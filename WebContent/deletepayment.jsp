<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles/headerfooter.css"/>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  background-image: url('images/delete.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
		background-size: cover;
}
.idper{
box-sizing: border-box;
  border: 2px black;
  border-radius: 4px;
  background-color:#75a3a3;
  color: white;
}
h1{color:white}

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
	<hr color="black">
		<h1>Delete the record</h1> <br>
		
		<!-- get the details passed from parameter from the url of the paymentaccount.jsp page -->
		<%
			String propertyname = request.getParameter("propertyname");
			String paymentid = request.getParameter("paymentid");
			String name = request.getParameter("name");
			String cardno = request.getParameter("cardno");
			String cardexpdate = request.getParameter("cardexpdate");
			String cvc = request.getParameter("cvc");
		%>
		
		<form action="delete" method="post">
			<input type="text" name="propertyname" value="<%= propertyname %>">
			<!-- paymentid is unique auto-incremented -->
			<input type="text" class="idper" name="paymentid" value="<%= paymentid %>" readonly>
			<input type="text" name="name" value="<%= name %>">
			<input type="text" name="cardno" value="<%= cardno %>">
			<input type="text" name="cardexpdate" value="<%= cardexpdate %>">
			<input type="text" name="cvc" value="<%= cvc %>">
			<input type="submit" name="submit" value="Delete The Data">
		</form>

	<br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br>
			<hr color="black">
		
		
		
		
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