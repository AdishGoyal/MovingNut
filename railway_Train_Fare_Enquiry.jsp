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
					$("#tbl1").show();	
					var t1=$("#t1").val();
					var t2=$("#t2").val();
					var t3=$("#t7").val();
					var t4=$("#t4").val();
					var t5=$("#t5").val();
					var t6=$("#t6").val();
					var day=$("#date1").val();
					var month=$("#date2").val();
					var year=$("#date3").val();
				var url="https://api.railwayapi.com/v2/fare/train/"+t1+"/source/"+t2+"/dest/"+t3+"/age/"+t4+"/pref/"+t5+"/quota/"+t6+"/date/"+day+"-"+month+"-"+year+"/apikey/e8mf15q56w/";
					$.get(url,function(response){
						//console.log(JSON.stringify(response));
						var t_number=response.train.number;
						var t_name=response.train.name;
						var j_class=response.journey_class.name;
						var quota=response.quota.name;
						var f_station=response.from_station.name;
						var d_station=response.to_station.name;
						var fare=response.fare;
						 var str="<tr><td>"+t_number+"</td><td>"+t_name+"</td><td>"+j_class+"</td><td>"+quota+"</td><td>"+f_station+"</td><td>"+d_station+"</td><td>"+fare+"</td></tr>";
						 $("table tbody").append(str);
					});
				});
			});
		</script>
	</head>
	<body>
		<div class="alert alert-info"><center><b>Train Fare Enquiry</b></center></div>
		<b>Train Number</b><input type="text" id="t1" class="form-control" placeholder="Enter Train Number"/><br>
		<b>Source Station</b><input type="text" id="t2" class="form-control" Placeholder="Enter Station Code"/><br>
		<b>Destination Station</b><input  type="text" id="t3" class="form-control" Placeholder="Enter Station Code"/><br>
		<b>age</b><input type="number" id="t4" class="form-control" placeholder="Enter Age"/><br>
		<b>Class</b>
			<select class="form-control" id="t5">
			  <option value="1A">First AC</option>
			  <option value="2A">2 Tier AC</option>
			  <option value="3A"> 3 Tier AC</option>
			  <option value="CC">Chair Car</option>
			  <option value="FC">First Class</option>
			  <option value="SL">Sleeper</option>
			  <option value="2S">2nd Sitting</option>
			  <option value="3E">3 Tier Economy</option>
			  <option value="GN">General</option>
			</select><br>
		 
		<b>Quota</b>
			<select class="form-control" id="t6">
				<option value="CK">Tatkal Quota</option>
				<option value="LD">Ladies Quota</option>
				<option value="DF">Defence Quota</option>
				<option value="FT">Foreign Tourist</option>
				<option value="DP">Duty Pass Quota</option>
				<option value="HP">Handicapped Quota</option>
				<option value="PH">Parliament House Quota</option>
				<option value="SS">Lower Berth Quota</option>
				<option value="YU">Yuva Quota</option>
				<option value="GN">General Quota</option>
			</select><br>
	
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
		</div>
	<br>
	<button id="b1" class="btn btn-info">click</button><br>
	<table class="table table-striped" id="tbl1" style="display: none;">
		<thead>
			<tr>
				<th>Train Number</th>
				<th>Train Name</th>
				<th>Class</th>
				<th>Quota</th>
				<th>From Station</th>
				<th>To Station</th>
				<th>Fare</th>
			</tr>
		</thead>
		<tbody></tbody>
	</table>
	</body>
</html>