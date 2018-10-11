<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MovingNut</title>
		<link rel="stylesheet" href="index.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>

</head>
<body>
	<div id="content">
			<div id="MyCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#MyCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#MyCarousel" data-slide-to="1"></li>
					<li data-target="#MyCarousel" data-slide-to="2"></li>
					<li data-target="#MyCarousel" data-slide-to="3"></li>
				</ol>
			
			<div class="carousel-inner">
				<div class="item active">
					<img class="img-responsive" src="pics/banner14.jpg" alt="1" style="width:100%;">
				</div>
				
				<div class="item">
					<img class="img-responsive" src="pics/banner19.jpg" alt="2" style="width:100%;">
				</div>

				<div class="item">
					<img class="img-responsive" src="pics/banner18.jpeg" alt="3" style="width:100%;">
				</div>
				
				<div class="item">
					<img class="img-responsive" src="pics/banner17.jpeg" alt="4" style="width:100%;">
				</div>
			</div>
			
			</div>
		</div>
		
		<div>
			<div id="navbar" class="navbar navbar-inverse navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<a href="#" class="navbar-brand">MovingNut</a>
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="index.jsp">HOME</a></li>
							<li><a href="railway_all_api.jsp">TRAIN Live</a></li>
							<li><a href="#">BUSES</a></li>
							<li><a href="#">HOTEL'S</a></li>
							<li><a href="#">ABOUT US</a></li>
							<li><a href="#">CONTACT US</a></li>
						</ul>
					</div>
				</div>
			</div>
	</div>
	
	<footer class="footer">
		<center>© 2018 MovingNut | Developed by Adish Goyal.</center>
	</footer>
</body>
</html>