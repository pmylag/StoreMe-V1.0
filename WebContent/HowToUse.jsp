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
						<li>When clicking the 'New ATM Information' hyperlink, the 'ATM placement' page will be displayed.</li>
						<li>On the 'ATM placement' page, choose what section will you place the ATM depending on its brand. Make sure that there is a vacant space in the desired section. If the section selection is successful, you will be redirected to the 'ATM Details' page.</li>
						<li>On the 'ATM Details' input the necessary information to proceed to the next step/page.</li>
						<li>Repeat previous step to proceed to the next page.</li>
						<li>After successfully completing the steps mentioned above, new information will be added to the database. It will be displayed on the tracker center and can be filtered by the date it is added.</li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="col-sm-4">
			<div class="panel panel-default">
				<div class="panel-heading">TRACKER CENTER</div>
				<div class="panel-body">
					<ul>
						<li>When clicking the 'Tracker Center' button, you may be able to trace previous units.</li>
						<li>On this page, the serial code is clickable. When clicked, the summary of details of the unit will be displayed.</li>						
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
						<a href="HomePage.jsp" style="color: white">Back To Home</a>
					</button>
				</div>
			</div>
		</div>
		
	</div>
</body>
</html>