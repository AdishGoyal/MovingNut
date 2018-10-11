<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>MovingNut-Railway between station</title>
		<link rel="stylesheet" href="MovingNut.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
<script>
			$(document).ready(function(){
				$("#b1").click(function(){
					
			var source=$("#t1").val();
			var dest=$("#t2").val();
			var day=$("#date1").val();
			var month=$("#date2").val();
			var year=$("#date3").val();
			var url="https://api.railwayapi.com/v2/between/source/"+source+"/dest/"+dest+"/date/"+day+"-"+month+"-"+year+"/apikey/e8mf15q56w/"
				$.get(url,function(response){
					//console.log(JSON.stringify(response));
					var str="";
					for(var i=0; i<response.trains.length;i++)
					{
						var from_sta=response.trains[i].from_station.name;
					var number=response.trains[i].number;
					var to_sta=response.trains[i].to_station.name;
					var train_name=response.trains[i].name;
					var src_departure_time= response.trains[i].src_departure_time;
					var travel_time=response.trains[i].travel_time;
					var dest_arrival_time= response.trains[i].dest_arrival_time;
						str +="<tr><td>"+i+"</td><td>"+from_sta+"</td><td>"+number+"</td><td>"+to_sta+"</td><td>"+train_name+"</td><td>"+src_departure_time+"</td><td>"+travel_time+"</td><td>"+dest_arrival_time+"</td></tr>";
					}
					$("table tbody").append(str);
					
				
				});
				
				});
			});
</script>
</head>
<body>

	<div class="alert alert-info"><center><b>Search Your Train</b></center></div>
	<div class="form-group">
	
		<b>Source Station</b><br>
			<input class="form-control" type="text" id="t1" placeholder="Enter Station Code"><br>
		<b>destination Station</b><br>
			<input class="form-control" type="text" id="t2" placeholder="Enter Station Code"><br>
		<b>Date</b>
		<br>
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
		</div>
		<br>
		<button class="btn btn-info" id="b1"> click</button>
		
	</div>
		<table class="table">
			<thead>
				<tr>
					<th>S_No.</th>
					<th>from station</th>
					<th>number</th>
					<th>To station</th>
					<th> Train name</th>
					<th>src_departure_time</th>
					<th>travel_time</th>
					<th>dest_arrival_time</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>
</body>
</html>