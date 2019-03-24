<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>How To Use</title>
</head>
<body>
	<%@include file="navbar.jsp" %>
	
	<div class="container">
	
		<h1>How to Use?</h1>
		
		<div class="col-sm-4">
			<div class="panel panel-default">
				<div class="panel-heading">HOME</div>
				<div class="panel-body">
					<ul>
						<li>Choose from one of the three functions displayed. (New ATM Information, Find Me, How to Use)</li>
					</ul>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">NEW ATM INFORMATION</div>
				<div class="panel-body">
					<ol type="1">
						<li>Choose what section will you place the ATM depending on its brand. .</li>
						<ul>
							<li>If the section selection is successful, you will be redirected to the "ATM Details" page</li>
						</ul>
						
						<li>Input the necessary information to proceed to the next step/page.</li>
						<ul>
							<li>New information will be added to the database. </li>
							<li>It will be displayed on the tracker center and can be filtered by the date it is added. </li>
						</ul>
					</ol>
				</div>
			</div>
		</div>
		
		<div class="col-sm-4">
			<div class="panel panel-default">
				<div class="panel-heading">FindMe</div>
				<div class="panel-body">
					<ul>
							<li>In here, you may be able to trace previous units.</li>
					</ul>
					<ol type="1">
						<li>Click update to edit unit's details.</li>
						<li>Click delete to remove the entry and its corresponding details.</li>
						<li>Click the serial code to view the summary of unit's details. </li>						
					</ol>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">SKU GUIDE</div>
				<div class="panel-body">
					<p>
						Serial Number - Bank - Model Type<br>
						Example: 83-PNB-SS23<br>
						<hr>
						Diebold Nixdorf - first 4 numbers
						NCR -  first 2 numbers
						Hitachi - TBA					
					</p>
					<button class="btn btn-primary" style="float: right">
						<a href="HomePage.jsp" style="color: white">Back To Home</a>
					</button>
				</div>
			</div>
		</div>
		
	</div>
</body>
</html>