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
		<script>
			$(document).ready(function(){
				$("#b1").click(function(){
					var t1=$("#t1").val();
					var url="https://api.railwayapi.com/v2/route/train/"+t1+"/apikey/e8mf15q56w/"	;
					$.get(url,function(response){
					//console.log(JSON.stringify(response));
					//var x=response.route.length;
					var str="";
				
					for(var i=0; i<response.route.length;i++)
					{
						var station=response.route[i].station.name;
						var scharr=response.route[i].scharr;
						var schdep=response.route[i].schdep;
						var distance=response.route[i].distance;
						var no=response.route[i].no;
						var halt=response.route[i].halt;
						var day=response.route[i].day;
						//alert(station+" ,"+scharr+" ,"+schdep+" ,"+distance+" ,"+no);
						 str += "<tr><td>"+i+"</td><td>"+station+"</td><td>"+scharr+"</td><td>"+schdep+"</td><td>"+distance+"</td><td>"+no+"</td><td>"+halt+"</td><td>"+day+"</td></tr>";
					}
					$("table tbody").append(str);
					//$("#d1").text(scharr);
					
					});	
				});
			});
		</script>
	</head>
	<body>
		<div class="alert alert-info"><center><b>Train Route</b></center></div>
		<b>Train number</b><input type="text" class="form-control" id="t1" placeholder="Enter Train Number"><br>
		<button id="b1" class="btn btn-info">click</button>
		<div id="d1"></div>
		<div id="d2"></div>
		<div id="d3"></div>
		<div id="d4"></div>
		<div id="d5"></div>
		<div id="d6"></div>
		<table class="table">
			<thead>
				<tr>
					<th>S.no</th>
					<th>station</th>
					<th>scharr</th>
					<th>schdep</th>
					<th>distance</th>
					<th>no</th>
					<th>halt</th>
					<th>day</th>
				</tr>
				<tbody></tbody>
			</thead>
		</table>
	</body>
</html>