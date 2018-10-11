<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery.js"></script>
		<script>
			$(document).ready(function(){
				$("#b1").click(function(){
					var t1=$("#t1").val();
					var url="https://api.railwayapi.com/v2/pnr-status/pnr/"+t1+"/apikey/e8mf15q56w/";
					$.get(url,function(response){
						//console.log(JSON.stringify(response));
						var str="";
						for(var i=0;i<response.passengers.length;i++)
						{
							var current_status=response.passengers[i].current_status;
							var booking_status=response.passengers[i].booking_status;
							var to_station=response.to_station.name;
							//var To_code=response.to_station.code;
							var from_station=response.from_station.name;
							//var from_code=response.from_station.code;
							var doj=response.doj;
							var train_name=response.train.name;
							var train_number=response.train.number;
							var pnr=response.pnr;
							var journey_class=response.journey_class.code;
							str +="<tr><td>"+train_number+"</td><td>"+train_name+"</td><td>"+pnr+"</td><td>"+booking_status+"</td><td>"+current_status+"</td><td>"+from_station+"</td><td>"+to_station+"</td><td>"+doj+"</td><td>"+journey_class+"</td></tr>";
								
							
						}	
							$("table tbody").append(str);						
						
					});	
				});	
			});
		</script>
	</head>
	<body>
		<div class="alert alert-info"><center><b>Check PNR Status</b></center></div>
		<b>Enter PNR Number</b><input type="text" id="t1" placeholder="Enter PNR Number" class="form-control"/><br>
		<button  id="b1" class="btn btn-info">click</button>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Train Number</th>
					<th>Train Name</th>
					<th>PNR Number</th>
					<th>Booking Status</th>
					<th>Current Status</th>
					<th>From Station</th>
					<th>To Station</th>
					<th>Date of journey</th>
					<th>Class</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>
	</body>
</html>