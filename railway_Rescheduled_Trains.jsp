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
		<script>
			$(document).ready(function(){
				$("#b1").click(function(){
					$("#d1").show();
					
					var day=$("#date1").val();
					var month=$("#date2").val();
					var year=$("#date3").val();
					var url="https://api.railwayapi.com/v2/rescheduled/date/"+day+"-"+month+"-"+year+"/apikey/e8mf15q56w/";
					$.get(url,function(response){
						console.log(JSON.stringify(response));
						var str="";
						for(var i=0; i<response.trains.length;i++)
						{
							var t_number=response.trains[i].number;
							var t_name=response.trains[i].name;
							var f_station=response.trains[i].from_station.name;
							var t_station=response.trains[i].to_station.name;
							var rescheduled_date=response.trains[i].rescheduled_date;
							var rescheduled_time=response.trains[i].rescheduled_time;
							var time_diff=response.trains[i].time_diff;
							var j=i+1;
							str+="<tr><td>"+j+"</td><td>"+t_number+"</td><td>"+t_name+"</td><td>"+f_station+"</td><td>"+t_station+"</td><td>"+rescheduled_date+"</td><td>"+rescheduled_time+"</td><td>"+time_diff+"</td></tr>";
						}
						$("table tbody").append(str);
					});
				});
			});
		</script>
	</head>
	<body>
		<div class="alert alert-info"><center><b>Railway Rescheduled Trains</b></center></div>
		
		<b>Date</b>
		<div id="t3">
			<select id="date1">
				<option>-Day-</option><option>01</option><option>02</option><option>03</option><option>04</option><option>05</option>
				<option>06</option><option>07</option><option>08</option><option>09</option><option>10</option><option>11</option>
				<option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>17</option>
				<option>18</option><option>19</option><option>20</option><option>21</option><option>22</option><option>23</option>
				<option>24</option><option>25</option><option>26</option><option>27</option><option>28</option><option>29</option>
				<option>30</option><option>31</option>
			</select>
			<select id="date2">
				<option>-Month-</option><option value="01">January</option><option value="02">February</option><option value="03">March</option><option value="04">April</option><option value="05">May</option>
				<option value="06">June</option><option value="07">July</option><option value="08">August</option><option value="09">September</option><option value="10">October</option><option value="11">November</option><option value="12">December</option>
			</select>
			<select id="date3"><option>-Year-</option><option>2018</option></select>
		</div><br>
		
		<button id="b1" class="btn btn-success">click</button>
		<div id="d1" class="container-fluid" style="display: none">
			<center><h1>Resheduled trains</h1></center>
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
					<th>S_no.</th>
						<th>Train Number</th>
						<th>Train Name</th>
						<th>From Station</th>
						<th>To Station</th>
						<th>Rescheduled Date</th>
						<th>Rescheduled Time</th>
						<th>Time Difference</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table> 
		</div>
	</body>
</html>