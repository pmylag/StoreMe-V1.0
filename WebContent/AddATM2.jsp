<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
<style>
	.circle {
			height: 50px;
			width: 50px;
			background-color: #FFF;
			border-radius: 50%;
			border-style: solid;
			border-width: 3px;
		}
		.circle-active {
			height: 50px;
			width: 50px;
			background-color: #FFF;
			border-radius: 50%;
			border-style: solid;
			border-width: 3px;
			background-color: #A9A9A9;	
		 }
		 
</style>

<head>
<meta charset="ISO-8859-1">
<title>Add ATM: Step 2</title>
</head>
<body>
	<%@include file="navbar.jsp" %>
	
	<div class="container">
		<div class="col-md-6">
			<h2>ATM Checklist</h2>
		</div>
		
		<div class="col-md-6" style="padding-top:1em">
			<div class="col-sm-2">
				<div class="circle">
					<h5 class="text-center" style="padding-top:0.25em">1</h5>
				</div>
			</div>	
			<div class="col-sm-2">
				<div class="circle-active">
					<h5 class="text-center" style="padding-top:0.25em">2</h5>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="circle">
					<h5 class="text-center" style="padding-top:0.25em">3</h5>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<form action = "AddAtmInfoServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);"> 
			<div class="col-sm-6">
				<div class ="col-sm-6">
					<div class="form-group">
						<label for="sku">SKU:</label>
						<input type="text" class="form-control" id="sku" name = "sku">
					</div>
					<div class="form-group">
						<label for="csn">Consignee:</label>
						<input type="text" class="form-control" id="csn" name = "consignee">
					</div>
					<div class="form-group">
						<label for="dt">Date:</label>
						<input type="date" class="form-control" id="dt" name =  "date">
					</div>
					<div class="form-group">
						<label for="tm">Time:</label>
						<input type="time" class="form-control" id="tm" name = "time">
					</div>
					<div class="form-group">
						<label for="wn">Waybill Number:</label>
						<input type="Number" class="form-control" id="wn" name = "waybill_no">
					</div>
					
				
					<button class="btn btn-lg">
						<a href="HomePage.jsp" style="color: black">Back</a>
					</button>
					
					<button class="btn btn-primary btn-lg" type="submit">
						<a href="AddATM3.jsp" style="color: white" type = "submit">Next</a>
					</button>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<label for="sl">Site Location:</label>
						<input type="text" class="form-control" id="sl" name = "site">
					</div>
					<div class="form-group">
						<label for="sel1">Status:</label>
						<select class="form-control" id="sel1" name = "status">
							<option value="Returned">Returned</option>
							<option value="Completed">Completed</option>
						</select>
					</div>
					<div class="form-group">
						<div class="form-group">
							<label for="act">Activity:</label>
							<textarea class="form-control" rows="5" id="act" name = "activity"></textarea>
						</div>
					</div>
				</div>
			</div>
		</form>
		<div class="col-sm-4">
			<img src="atmWithPerson.jpg" height="150%" width="150%">
		</div>
	
	</div>
</body>
</html>