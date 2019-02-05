<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<style>
		.rectangle1 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%int i = 0;%>
		  <%if (i < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i >= 60 && i <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
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
		.center {
			display: block;
			margin-left: auto;
			margin-right: auto;
			width: 50%;
		}
		
	</style>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<title>Add ATM: Step 1</title>
</head>
<body>
	<%@include file="navbar.jsp" %>
	
	<div class="container">
		<div class="col-md-6">
			<h2>ATM Checklist</h2>
		</div>
		
		<div class="col-md-6" style="padding-top:1em">
			<div class="col-sm-2">
				<div class="circle-active">
					<h5 class="text-center" style="padding-top:0.25em">1</h5>
				</div>
			</div>	
			<div class="col-sm-2">
				<div class="circle">
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
		<div class="col-sm-4">
			<img src="ATM.jpg">
			<div style="padding-left: 5em; padding-top: 5em">
			
			<button class="btn btn-lg">
				<a href="HomePage.jsp" style="color: black">Back</a>
			</button>
				
			<button class="btn btn-primary btn-lg" type="submit">
				<a href="AddATM2.jsp" style="color: white">Save Changes</a>
			</button>
			</div>
		</div>
		
		<div class="col-sm-8">
			
			<div class="container" style="padding-top: 5em">
				<div class="row">
			    	<div class="col">
			    		<div class="col-sm-1" style="padding-left:5em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 1<br> 0/100</p></h4>
							</div>
						</div>
					    <div class="col-sm-1" style="padding-left:7em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 2<br> 0/100</p></h4>
							</div>
						</div>
						<div class="col-sm-1" style="padding-left:7em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 3<br> 0/100</p></h4>
							</div>
						</div>
				    </div>
		    	</div>
		    	<div class="row">
		    		<div class="col">
			    		<div class="col-sm-1" style="padding-left:5em; padding-top:2em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 4<br> 0/100</p></h4>
							</div>
						</div>
					    <div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 5<br> 0/100</p></h4>
							</div>
						</div>
						<div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 6<br> 0/100</p></h4>
							</div>
						</div>
						<div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 7<br> 0/100</p></h4>
							</div>
						</div>
				    </div>
		    	</div>
		    	<div class="row">
		    		<div class="col">
			    		<div class="col-sm-1" style="padding-left:5em; padding-top:2em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 8<br> 0/100</p></h4>
							</div>
						</div>
					    <div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 9<br> 0/100</p></h4>
							</div>
						</div>
						<div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 10<br> 0/100</p></h4>
							</div>
						</div>
				    </div>
		    	</div>
		    	
		    	<div class="container">
					<h2>Floor Plan</h2>
					<!-- Trigger the modal with a button -->
					<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Open</button>
					
					<!-- Modal -->
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog modal-lg">
						    <!-- Modal content-->
						      <div class="modal-content">
						     	<div class="modal-header">
						       	<button type="button" class="close" data-dismiss="modal">&times;</button>
						       	<h4 class="modal-title">Floor Plan</h4>
						       </div>
						       <div class="modal-body">
						        <div clas="panel">
						        	<img class="center" src="FloorPlan.jpg" width="1000px" height="400px "></img>
						        </div>
						       </div>
						        <div class="modal-footer">
						        	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						   	</div>
						</div>
					</div>
				</div>
		    	
			</div>
		</div>
			
		</div>
</body>
</html>