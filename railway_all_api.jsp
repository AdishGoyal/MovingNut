<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>MovingNut-IRCTC</title>
		<link rel="stylesheet" href="MovingNut.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="navbar navbar-inverse navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<div class="navbar-brand">MovingNut</div>
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="RaiWay_PNR_Status.jsp" target="iframe">PNR Status</a></li>
						<li><a href="railway_between_station.jsp" target="iframe">Search Train</a></li>
						<li><a href="railway_live_station.jsp" target="iframe">Live Status</a></li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="container-fluid">
		<div class="col-md-12">
			<div class="col-md-2"><center><img src="pics/rail.gif"></center></div>
			<div class="col-md-8"><center><h3>INDIAN RAILWAYS PASSENGER ENQUIRY</h3></center></div>
			<div class="col-md-2"><center><img src="pics/india.gif"></center></div>
		</div>
		</div>
		<br>
		<div class="container-fluid">
			<marquee>Please help Indian railways and government of India in moving towards a digitized and cashless economy. Eradicate black money.</marquee>
		</div>
		<br>
		<div class="col-md-12">
			<div class="col-md-3">
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#body" data-parent="#accordion" data-toggle="collapse">Train between Station</a>
							</h4>
						</div>
						<div id="body" class="panel-collapse collapse">
							<table id="services" class="table table-striped table-fixed">
									<tr><td><a href="railway_between_station.jsp" target=iframe>Click for View...</a></td></tr>
							</table>
						</div>
					</div>
					
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#body1" data-parent="#accordion" data-toggle="collapse">Railway Cancelled Trains</a>
							</h4>
						</div>
						<div id="body1" class="panel-collapse collapse">
							<table class="table table-striped table-fixed">
									<tr><td><a href="railway_Cancelled_Trains.jsp" target=iframe>Click for View...</a></td></tr>
							</table>
						</div>
					</div>
					
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#body2" data-parent="#accordion" data-toggle="collapse">Train Live Status</a>
							</h4>
						</div>
						<div id="body2" class="panel-collapse collapse">
							<table class="table table-striped table-fixed">
									<tr><td><a href="railway_live_station.jsp" target=iframe>Click for View...</a></td></tr>
							</table>
						</div>
					</div>
					
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#body12" data-parent="#accordion" data-toggle="collapse">Check PNR Status</a>
							</h4>
						</div>
						<div id="body12" class="panel-collapse collapse">
							<table class="table table-striped table-fixed">
									<tr><td><a href="RaiWay_PNR_Status.jsp" target=iframe>Click for View...</a></td></tr>
							</table>
						</div>
					</div>
					
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#body4" data-parent="#accordion" data-toggle="collapse">Train Route</a>
							</h4>
						</div>
						<div id="body4" class="panel-collapse collapse" target=iframe>
							<table class="table table-striped table-fixed">
									<tr><td><a href="railway_route.jsp" target=iframe>Click for View...</a></td></tr>
							</table>
						</div>
					</div>
					
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#body5" data-parent="#accordion" data-toggle="collapse">Seat Availability</a>
							</h4>
						</div>
						<div id="body5" class="panel-collapse collapse">
							<table class="table table-striped table-fixed">
									<tr><td><a href="railway_Seat_availability.jsp" target=iframe>Click for View...</a></td></tr>
							</table>
						</div>
					</div>
					
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#body6" data-parent="#accordion" data-toggle="collapse">Station Autocomplete Suggest</a>
							</h4>
						</div>
						<div id="body6" class="panel-collapse collapse">
							<table class="table table-striped table-fixed">
									<tr><td><a href="railway_Station_Autocomplete_Suggest.jsp" target=iframe>Click for View...</a></td></tr>
							</table>
						</div>
					</div>
					
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#body7" data-parent="#accordion" data-toggle="collapse">Railways Station Code to Name</a>
							</h4>
						</div>
						<div id="body7" class="panel-collapse collapse">
							<table class="table table-striped table-fixed">
									<tr><td><a href="railway_Station_Code_to_Name.jsp" target=iframe>Click for View...</a></td></tr>
							</table>
						</div>
					</div>
					
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#body8" data-parent="#accordion" data-toggle="collapse">Railways Station Name to Code</a>
							</h4>
						</div>
						<div id="body8" class="panel-collapse collapse">
							<table class="table table-striped table-fixed">
									<tr><td><a href="railway_Station_Name_to_Code.jsp" target=iframe>Click for View...</a></td></tr>
							</table>
						</div>
					</div>
					
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#body9" data-parent="#accordion" data-toggle="collapse">Railways Train Arrivals</a>
							</h4>
						</div>
						<div id="body9" class="panel-collapse collapse">
							<table class="table table-striped table-fixed">
									<tr><td><a href="railway_Train_Arrivals.jsp" target=iframe>Click for View...</a></td></tr>
							</table>
						</div>
					</div>
					
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#body10" data-parent="#accordion" data-toggle="collapse">Train Autocomplete Suggest</a>
							</h4>
						</div>
						<div id="body10" class="panel-collapse collapse">
							<table class="table table-striped table-fixed">
									<tr><td><a href="railway_Train_Autocomplete_Suggest.jsp" target=iframe>Click for View...</a></td></tr>
							</table>
						</div>
					</div>
					
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#body11" data-parent="#accordion" data-toggle="collapse">Railways Train Fare Enquiry</a>
							</h4>
						</div>
						<div id="body11" class="panel-collapse collapse">
							<table class="table table-striped table-fixed">
									<tr><td><a href="railway_Train_Fare_Enquiry.jsp" target=iframe>Click for View...</a></td></tr>
							</table>
						</div>
					</div>
					
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#body3" data-parent="#accordion" data-toggle="collapse">Railways Rescheduled Train</a>
							</h4>
						</div>
						<div id="body3" class="panel-collapse collapse">
							<table class="table table-striped table-fixed">
									<tr><td><a href="railway_Rescheduled_Trains.jsp" target=iframe>Click for View...</a></td></tr>
							</table>
						</div>
					</div>
					
				</div>

			</div>
			
			<div id="iframe" class="col-md-9">
				<iframe class="iframe" name="iframe" src="banner.jsp"></iframe>
			</div>
		</div>
		
		<div id="footer" class="col-md-12">
			<div class="row" id="foot"><center>© 2018 MovingNut | Developed by Adish Goyal.</center></div>
		</div>
		
	</body>
</html>