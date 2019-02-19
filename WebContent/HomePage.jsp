<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<title>StoreMe</title>
</head>
<body>
	<%@include file="navbar.jsp" %>
	
	<div class="container">
		<div class="jumbotron" style="background-color:white;">
			<div class="col-sm-4">
				<a href="AddATM1.jsp">
					<img src="atm.png" style="height:300px; width:300px">
				</a>
				<h2 class="text-center">New ATM Information</h2>
			</div>
			<div class="col-sm-4">
				<a href="Results.jsp">
					<img src="computer.png" style="height:300px; width:300px">
				</a>
				<h2 class="text-center"><a href="GetAllAtmInfoServlet">FindMe</a></h2>
			</div>
			<div class="col-sm-4">
			<a href="HowToUse.jsp">
				<img src="howtouse.jpg" style="height:300px; width:400px">
			</a>
				<h2 class="text-center"> &nbsp &nbsp &nbsp &nbsp How to Use</h2>
			</div>
  		</div>      
	</div>


	
</body>
</html>