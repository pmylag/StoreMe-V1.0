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
		<%! int error = 0; %>
		<%if(error == 1) {%>
			<div class="alert alert-danger">
				<strong>Error!</strong> Invalid format for SKU. Must be in format of 12-BPI-DD31
			</div>
		<%} %>
		<div class="col-md-6">
			<h2>ATM Details</h2>
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
		<script type="text/javascript">
		function checkForm(form)
		{
			re = /^[a-zA-Z ]*$/;
			if (!re.test(form.consignee.value)){
				alert("No Numbers or Special Characters allowed for Consignee");
				form.consignee.focus();
				return false;
			}
		
			return true;
		}
		
		</script>
		
		<form action = "AddAtmInfoServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);"> 
			<div class="col-sm-6">
				<div class ="col-sm-6">
					
					<%if(error == 1) {%>
					<div class="form-group has-error has-feedback">
					<%} else {%>
					<div class="form-group">
					<%} %>
						<label for="sku">*SKU:</label>
						<input type="text" class="form-control" id="sku" name = "sku" placeholder="Ex: 34-BDO-BB34"required>
						<%if(error == 1) {%>
							<span class="glyphicon glyphicon-remove form-control-feedback"></span>
						<%} %>
					</div>
					<div class="form-group">
						<label for="csn">*Consignee:</label>
						<input type="text" class="form-control" id="csn" name = "consignee" required>
					</div>
					<div class="form-group">
						<label for="dt">*Date Received:</label>
						<input type="date" class="form-control" id="dt" name = "date" min="2019-01-01" max="9999-12-12" required>
					</div>
					<div class="form-group">
						<label for="tm">*Time Received:</label>
						<input type="time" class="form-control" id="tm" name = "time" min="08:00:00" max="19:00:00" required>
					</div>
					<div class="form-group">
						<label for="wn">*Waybill Number:</label>
						<input type="Number" class="form-control" min="0" id="wn" name = "waybill_no" required>
					</div>
					
				
					<button class="btn btn-lg">
						<a href="BackServlet" style="color: black">Back</a>
					</button>
					
					<input type="submit" class="btn btn-lg btn-info" value="Next">
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<label for="sl">*Site Location:</label>
						<input type="text" class="form-control" id="sl" name = "site" required>
					</div>
					<div class="form-group">
						<label for="sel1">*Status:</label>
						<select class="form-control" id="sel1" name = "status" required>
							<option value="Scheduled">Scheduled</option>
							<option value="Waiting">Waiting</option>
							<option value="On Hold">On Hold</option>
						</select>
					</div>
					<div class="form-group">
						<div class="form-group">
							<label for="act">*Activity:</label>
							<textarea class="form-control" rows="5" id="act" name = "activity" required></textarea>
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