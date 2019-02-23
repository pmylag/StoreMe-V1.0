<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="Style/bootstrap-4.0.0-dist/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="Style/styles.css">
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<title>Results</title>
</head>
<body>
	<%@include file="navbar.jsp" %>
	<div class="modal-content">
		<div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal">&times;</button>
		  <h4 class="modal-title">Edit Entry</h4>
		</div>
		<div class="modal-body">
			<div class="panel panel-default">
				<div class="panel panel-default">
					<div class="panel-heading">  
 						<h4 class = "text-center">
 							<font color="black">83-PNB-SS23</font>
 						</h4>
 					</div>
 	
 					<font color="gray">	
 	
 						<div class="panel-body bg-default">
							<div class="form-group">
				      			<div class="col-sm-4">
				      				<div class="dropdown">
				      	 				<label for="drop">Section: </label>
						  				<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						   					Section
						  				</button>
						 
						  				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton" id = "drop">
						    				<a class="dropdown-item" href="#">A</a>
						    				<a class="dropdown-item" href="#">B</a>
						  				</div>
									</div>
									<div class="input-group date" style = "padding-top: 1em" data-provide="datepicker">
							   			<label for="uses">Date Shipped: </label>
							    		<input type="date" class="form-control" id="Uses">
							    	</div>
									<div class="dropdown" style = "padding-top: 1em">
										<label for="dropdownMenuButton">Status: </label>
						  				<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						   					Status
						  				</button>
						  				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
										    <a class="dropdown-item" href="#">Complete</a>
										    <a class="dropdown-item" href="#">Incomplete</a>
										</div>
									</div>
									<div class="Row" style = "padding-top: 1em">
										<div class="form-group">
										  <label for="usr">Received by: </label>
										  <input type="text" class="form-control" id="usr">
										</div>
									</div> 
								<button type="button" class="btn btn-primary">Submit</button>						
				      		</div>
							<div class ="col-sm-8">
						    	<div class="form-group">
									<label for="comment">Activity: </label>
									<textarea class="form-control" rows="7" id="comment"></textarea>
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