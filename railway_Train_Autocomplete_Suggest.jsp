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
					
				var str="";
				var t1=$("#t1").val();
				var url="https://api.railwayapi.com/v2/suggest-train/train/"+t1+"/apikey/e8mf15q56w/";	
				$.get(url,function(response){
				//	console.log(JSON.stringify(response));
				for(var i=0; i<response.trains.length;i++)
				{
					var t_number=response.trains[i].number;
					var t_name=response.trains[i].name;
					var j=i+1;
					str +="<tr><td>"+j+"</td><td>"+t_number+"</td><td>"+t_name+"</td></tr>";
					
				}
				$("table tbody").append(str);
					
				});
			});
		});
		</script>
	</head>
	<body>
	<div class="alert alert-info"><center><b>Train Autocomplete Suggest</b></center></div>
	<b>Enter Train name / Number</b><input type="text" id="t1" class="form-control" placeholder="Enter Train Name / Number"/><br>
	<button id="b1" class="btn btn-info">click</button><br>
		<table class="table table hover">
			<thead>
				<tr>
					<th>S_no</th>
					<th>Train Number</th>
					<th>Train Name</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>
	</body>
</html>