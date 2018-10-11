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
					var str="";
					var url="https://api.railwayapi.com/v2/code-to-name/code/"+t1+"/apikey/e8mf15q56w/";
					$.get(url,function(response){
						console.log(JSON.stringify(response));
						for(var i=0;i<response.stations.length;i++)
						{
							var s_name=response.stations[i].name;
							var s_code=response.stations[i].code;
							var j=i+1;
							str +="<tr><td>"+j+"</td><td>"+s_name+"</td><td>"+s_code+"</td></tr>";
						}	
						$("table tbody").append(str);
					});		
				});
			});
		</script>
	</head>
	<body>
	<div class="alert alert-info"><center><b>Station Code to Station Name</b></center></div>
	<b>Enter Station code</b>	
	<input class="form-control" type="text" id="t1" placeholder="Enter Station Code"/><br>
		<button id="b1" class="btn btn-info">click</button>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>S_no</th>
					<th>Station name</th>
					<th>Station code</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>
	</body>
</html>