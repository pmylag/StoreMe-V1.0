<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="bootstrap-3.3.7-dist/jquery/jquery.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style>
	.bg-company-blue {
    background-color: #5079D8;
	}
	
</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Page</title>
</head>
<body>
	<div class="row">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">StoreMe</a>
				</div>
				
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
	      		 <% int id = (Integer)session.getAttribute("iduser"); %>
			 	 <%if(session.getAttribute("privilege1") != null || session.getAttribute("privilege3") != null) {%>
		         <li><a href="EditUsersServlet?id=<%= id %>"><span class="glyphicon glyphicon-user"></span></a></li>
		         <%} %>
		      <form action="Logout" class="navbar-form navbar-right">
      				<input type="submit" class="btn btn-info" value="Logout" onclick = "myFunction2()">
      				<script>
						function myFunction2() {
    					alert("Successfully Logged Out.");
						}
					</script>
      		 </form>
     		 </ul>
		  </div>
		</nav>
	</div>
	
	<div class = "container">
		<div class="panel panel-default">
			<div class="panel panel-default">
				<div class="panel-heading">  
					<h4 class = "text left"> Edit Entry</h4>
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
							<button type="button" class="btn">Cancel</button>
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
</body>
</html>