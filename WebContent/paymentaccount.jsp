<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles/headerfooter.css"/>
<style>
body {
  background-image: url('images/flat.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
		background-size: cover;}
  table { background-color:#C0C0C0; }
</style>
<meta charset="ISO-8859-1">
<title>Payment Update</title>
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
	
	<center>
	
	<!--table to display data -->
	<table border="1">
		<tr>
			<th>Property Name</th>
			<th>Payment ID</th> <!-- paymentid is unique auto-incremented -->
			<th>Customer Name</th>
			<th>Card Number</th>
			<th>Card Expire Date</th>
			<th>CVC</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>	
		
		<!-- create a loop to display data in the table -->
		<!-- items name should be the name you gave in the setattribute in the servlet -->
		<c:forEach var="payment" items="${paydetails}">
		
		
		<!-- assign values for the variables -->
		<c:set var="propertyname" value="${payment.propertyname}"> </c:set>
		<c:set var="paymentid" value="${payment.paymentid}"> </c:set> <!-- paymentid is unique auto-incremented -->
		<c:set var="name" value="${payment.name}"> </c:set>
		<c:set var="cardno" value="${payment.cardno}"> </c:set>
		<c:set var="cardexpdate" value="${payment.cardexpdate}"> </c:set>
		<c:set var="cvc" value="${payment.cvc}"> </c:set>
	
		<tr>
		<!-- print details inside the table -->
			<td>${payment.propertyname}</td>
			<td>${payment.paymentid}</td> <!-- paymentid is unique auto-incremented -->
			<td>${payment.name}</td>
			<td>${payment.cardno}</td>
			<td>${payment.cardexpdate}</td>
			<td>${payment.cvc}</td>
			
			<td>
				<!-- set the page that need to be navigated when updating as the value -->
				<c:url value="updatepayment.jsp" var="payupdate">

					<!-- data to take to the navigated page -->
					<c:param name="propertyname" value="${propertyname}"></c:param>
					<c:param name="paymentid" value="${paymentid}"></c:param> <!-- paymentid is unique auto-incremented -->
					<c:param name="name" value="${name}"></c:param>
					<c:param name="cardno" value="${cardno}"></c:param>
					<c:param name="cardexpdate" value="${cardexpdate}"></c:param>
					<c:param name="cvc" value="${cvc}"></c:param>
			
				</c:url>
		
				<a href="${payupdate}"> <!-- pass the variable name -->
					<input type="button" name="update" value="update details">
				</a>
			</td>
		
			<td>
				<!-- set the page that need to be navigated when deleting as the value -->
				<c:url value="deletepayment.jsp" var="paydelete">
					
					<!-- data to take to the navigated page -->
					<c:param name="propertyname" value="${propertyname}"></c:param>
					<c:param name="paymentid" value="${paymentid}"></c:param> <!-- paymentid is unique auto-incremented -->
					<c:param name="name" value="${name}"></c:param>
					<c:param name="cardno" value="${cardno}"></c:param>
					<c:param name="cardexpdate" value="${cardexpdate}"></c:param>
					<c:param name="cvc" value="${cvc}"></c:param>
		
				</c:url>
		
				<a href="${paydelete}"> <!-- pass the variable name -->
					<input type="button" name="update" value="delete details">
				</a>
			</td>
		</tr>
				
		</c:forEach>
	</table>
	</center>
	<br><br><br><br><br><br><br><br><br><br>
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