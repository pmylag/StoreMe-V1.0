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
						<li>From the homepage, choose from one of the four functinos provided (new ATM information, tracker center, generate reports, and how to use)</li>
					</ul>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">NEW ATM INFORMATION</div>
				<div class="panel-body">
					<ul>
						<li>After clicking new ATM information, ATM placement will be displayed.</li>
						<li>From the same page, choose what section of the ATM brand is designated. Make sure that the section has still available space for new ATM units. If it has available space, it will redirect to the ATM details.</li>
						<li>From the ATM details, kindly put the necessary information in order for you to proceed to the next page.</li>
						<li>Repeat previous step to proceed to the next page.</li>
						<li>After completing all stemps, new information will be added into the database. Also, it will be automatically displayed and filtered on the tracker center by the date it is added.</li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="col-sm-4">
			<div class="panel panel-default">
				<div class="panel-heading">TRACKER CENTER</div>
				<div class="panel-body">
					<ul>
						<li>After clicking the Tracker Center button, it will trace previous units.</li>
						<li>From that page, the serial code is clickable. After clicking it, the summary details of the unitt will show. </li>
						<li>Beside the remarks column, there is an Update and Delete function. For the Update, it is where you can update the status and other details of the ATM. This will Require a password to access it. The same process goes with the Delete function.</li>
						
					</ul>
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
						<a href="HomePage.jsp" style="color: white">BACK TO HOME</a>
					</button>
				</div>
			</div>
		</div>
		
	</div>
</body>
</html>