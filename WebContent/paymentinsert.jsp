<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<script src="script/myscript.js"> </script>
	<link rel="stylesheet" href="styles/formstyles.css"/>
	<link rel="stylesheet" href="styles/headerfooter.css"/>
	<link rel="stylesheet" href="styles/mystyles.css"/>
	<title>Payment Insert</title>
	<style>

	.photos {
    float: left,top;
    width: 50%;
    height: 500px;
	}

	.img {
    object-fit: cover;
    width: 40%;
    margin: 1.5%;
    float: left;
    height: 200px;
	}

	#bigImg {
    margin-top: 30px;
    margin-left: 11%;
    width: 60%;
	}
	.payForm {
    float: right;
    margin-left: 0px;
    margin-right: 10px;
    margin-top: 10px;
     margin-bottom: 10px;
    width:50%;}

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
		<h1 align="center" class="capitalize"> Purchase a Property </h1>
		

		<div class="payForm">
		
		<form action="pay" method="post">
		<center>
		<h3>Choose The Property Area:</h3>
				<p>1.Eco</p> 
				<p>2.Sea</p>
				<p>3.Lake</p>
				<p>4.Home</p>
				<p>5.City</p>
				<p>6.Sky</p>
				<input type="text" id="propertyname" name="propertyname" style="width:20%" required 
				placeholder="eco"><br><br>
		</center>
            <fieldset>
				<legend> Payment Details </legend>
        	
        		<!-- type of cards we accept -->
          		<h3>Accepted cards</h3>
                   <img class="cards" src="images/cards.png" width="40%" height="80%"><br><br>
                  
                  <h4>Customer Name</h4><br>
                     <input type="text" id="cname" name="name" style="width:60%" required/> <br><br>
                     
                  <h4>Card Number</h4><br>
                     <input type="text" id="cno" name="cardno" style="width:30%" placeholder="xxxxxxxxxxxxxxxx" pattern="[0-9]{16}" required/> <br><br>

                 	<h4>Expire Date </h4><br>
                       <input type="text" id="expire" name="cardexpdate" style="width:10%" placeholder="yy/mm"
                                pattern="[0-9]{2}+/[0-9]{2}+/[0-9]{2}" required>

                     <h4>CVC</h4><br>
                        <input type="text" id="cvc" name="cvc" placeholder="xxx" style="width:10%" pattern="[0-9]{3}" required><br>
				</fieldset>
                  <br><br> Accept Privacy Policy Terms
                    <input type="checkbox" id="policy" name="policy" onclick="enableButton()" required> <br><br>
                   
                   <br><input type="submit" id="insertbtn" name="insertbtn" value="BUY NOW" disabled>
        	</form> 
        </div>
      
 	  <div class="photos">
       	
                <div class="image">
                    <img id="bigImg" src="images/2.jpeg" height="300px">
                </div>

                <div class="thumbnails">
                    <div class="thumbnail1"><img id="image1" class="img" src="images/7.jpg"
                            onclick="loadPhoto('image1')"> </div>
                    <div class="thumbnail1"><img id="image2" class="img" src="images/3.jpg"
                            onclick="loadPhoto('image2')"></div>
                    <div class="thumbnail1"><img id="image3" class="img" src="images/1.jpg"
                            onclick="loadPhoto('image3')"></div>
                    <div class="thumbnail1"><img id="image4" class="img" src="images/5.jpg"
                            onclick="loadPhoto('image4')"></div>
                    <div class="thumbnail1"><img id="image5" class="img" src="images/6.jpg"
                            onclick="loadPhoto('image5')"></div>
                    <div class="thumbnail1"><img id="image6" class="img" src="images/4.jpg"
                            onclick="loadPhoto('image6')"></div>
                            

                </div>
		
       </div>  
<br><br><br><br><br><br><br>
		
			<div>
			<footer class="footer">
				<div class="cont">
					<div class="col">
						<div class="card">
							<h2>About Us</h2>
								<p>We're excited to offer some quality  properties .
									The Niwahana  Properties (Pvt) Ltd is one of the leading companies in the real estate sector in Sri Lanka.
									We have over 20 years experience in real estate.</p>
						</div>
					</div>
		 
					<div class="col">
						<div class="card">
							<h2>Find Us </h2>
								<p> Facebook: Niwahana  Properties <br>
									Instagram : niwahanalive<br>
									Email: inquire@N properties .com <br>
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
			</footer> </div>
		
</body>
</html>