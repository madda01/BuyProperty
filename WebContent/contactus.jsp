<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="styles/headerfooter.css"/>
	<meta charset="ISO-8859-1">
<title>Contact Us</title>
<style>
body {
  background-image: url('images/contactus.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  min-height:100vh;
  position:relative;
		
}

.content{
    color: #000000;
    text-align: center;
     padding-top: 1.5%;
}

#phone{
    float:left;
    width:25%;
    height:280px; 
    padding-right: 10%;
}

#location{
    float:left;
    width:25%;
    height:280px;
    padding-right: 10%; 
}

#email{
    float:left;
    width:25%;
    height:280px; 
}

.icons{
    height:450px;
    width:100%;
    margin-top:0px;
    margin-bottom:0px ;
    background-color:#bbb8b8;
    opacity: 0.9;
    
}
.icon{
    text-align:center;
    color:#000000;
    margin-top:20px;
}
#t1,#t2,#descript{
    text-align:center;
    color:#000000;
}

</style>
</head>
<body>
<div class="menubar">
			<button type="submit"class="btnlogin" ><a href="#">Login</a></button>
			<button type="submit"class="btnRegister"><a href="#">Register</a></button>

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

      <div class="icons">
	   <div class="content">
			<h2>Get in Touch</h2>
			<h3>Let us know how we can help, and set up a time to chat with us!
			<i class="fa fa-comments" style="font-size:30px"></i></h3>
		</div> <hr>
            <div id="phone">
                <div class="icon"><i class="fa fa-mobile" style="font-size:60px"></i>
                </div>
                <br>
                <h2 id="t1">CALL US</h2>
                <h3 id="t2">NIVAHANA PROPERTIES</h3>
                <h4 id="descript">+94 355 584 894 <br> +94 445 236 777 <br> +94
                    558 326 256</h4>
            </div>
            <div id="location">
                <div class="icon"><i class="fa fa-map-marker" style="font-size:60px;"></i></div>
                <br>
                <h2 id="t1">MAIN OFFICE ADDRESS</h2>
                <h3 id="t2">NIVAHANA PROPERTIES</h3>
                <h4 id="descript">No 14/2,<br>Athurugiriya road,<br>Malabe</h4>

            </div>
            <div id="email">
                <div class="icon"><i class="fa fa-envelope" style="font-size:60px;"></i>
                </div>
                <br>
                <h2 id="t1">EMAIL US</h2>
                <h3 id="t2">NIVAHANA PROPERTIES</h3>
                <h4 id="descript">inquire@Nproperties.com <br>
                    services@Nproperties.com </h4>
			  <br>
			  <br>
			  <br>
			  <br>
            </div>
        </div> <hr> 
		
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

</body>
</html>