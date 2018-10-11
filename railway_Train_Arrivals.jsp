<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
		<script src="js/jquery.js"></script>
		<script>
			$(document).ready(function(){
				$("#b1").click(function(){
					$("#tbl1").show();
					var t1=$("#t1").val();
					var t2=$("#t2").val();
					var url="https://api.railwayapi.com/v2/arrivals/station/"+t1+"/hours/"+t2+"/apikey/e8mf15q56w/"
					$.get(url,function(response){
						console.log(JSON.stringify(response));
						var str="";
						for(var i=0;i<response.trains.length;i++)
						{
							var t_no=response.trains[i].number;
							var t_name=response.trains[i].name;
							var s_arr=response.trains[i].scharr;
							var s_dep=response.trains[i].schdep;
							var a_arr=response.trains[i].actarr;
							var a_dep=response.trains[i].actdep;
							var delay=response.trains[i].delayarr;
							var j=i+1;
							str+="<tr><td>"+j+"</td><td>"+t_no+"</td><td>"+t_name+"</td><td>"+s_arr+"</td><td>"+s_dep+"</td><td>"+a_arr+"</td><td>"+a_dep+"</td><td>"+delay+"</td></tr>";
						}
						$("#tbl1 tbody").append(str);
					})
				})
			})
		</script>
		
	</head>
	<body>
	<div class="alert alert-info"><center><b>Railway Arrival Trains</b></center></div>
	<b>Enter Station Code</b><input type="text" id="t1" class="form-control" placeholder="Enter Station Code"/><br>
	<b>Time</b><select id="t2" class="form-control">
	<option value="2">-Select-</option>
		<option value="2">2 hours</option>
		<option value="4">4 hours</option>
	</select><br>
	<button id="b1" class="btn btn-info">click</button>
	<div class="container-fluid"><br>
		<table class="table table-striped table-bordered " style="display: none;" id="tbl1">
			<thead>
				<tr>
					<th>S_no</th>
					<th>Train Number</th>
					<th>Train Name</th>
					<th>Schedule Arrival</th>
					<th>Schedule Departure</th>
					<th>Actual Arrival</th>
					<th>Actual Departure</th>
					<th>Delay Time</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>
		</div>
	</body>
</html>