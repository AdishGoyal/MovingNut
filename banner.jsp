<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
		<link rel="stylesheet" href="MovingNut.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<style>
		body {
    		overflow:hidden;
			}	
	</style>
	
	<div id="content">
			<div id="MyCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#MyCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#MyCarousel" data-slide-to="1"></li>
					<li data-target="#MyCarousel" data-slide-to="2"></li>
				</ol>
			
			<div class="carousel-inner">
				<div class="item active">
					<img class="img-responsive" src="pics/train.jpg" alt="1" style="width:100%;">
				</div>
					<div class="item">
						<img class="img-responsive" src="pics/train2.jpg" alt="2" style="width:100%;">
					</div>

				<div class="item">
					<img class="img-responsive" src="pics/train3.jpg" alt="3" style="width:100%;">
				</div>
			</div>
			</div>
		</div>
		<br>
		<div class="col-md-12">
			<table>
				<tr>
					<td><a href="RaiWay_PNR_Status.jsp"><center><img src="pics/pnr.png" width="40%"></center></a></td>
					<td><a href="railway_live_station.jsp"><center><img src="pics/Live.png" width="40%"></center></a></td>
					<td><a href="railway_between_station.jsp"><center><img src="pics/search.png" width="40%"></center></a></td>
					<td><a href="railway_route.jsp"><center><img src="pics/train-route.png" width="40%"></center></a></td>
				</tr>
			</table>
		</div>
		
</body>
</html>