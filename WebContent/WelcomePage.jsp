<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="bootstrap-3.3.7-dist/jquery/jquery.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>


<html>
<title>StoreMe: Login</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>


<body>

 	<div class="container">
		<div class="jumbotron" style="background-color:white;">
			<div class="row">
			<center>
				<a href="AddATM1.jsp">
					<img src="STOREME.png" style="height:200px; width:200px">
				</a>
				<h4 class="text-center">Warehouse Inventory Monitoring System</h4>
			</center>
			<div class = "col-sm-4">
			</div>
			<div class="col-sm-5">
				<form id="signin" class="navbar-form navbar-right" role="form" action="Login" method="post">	
					<div class="form-group">
					    <label for="exampleInputEmail1">Username: </label>
					    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="username" required>
					</div>
					
					<div class="form-group">
					    <label for="exampleInputEmail1">Password: </label>
					    <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="password" required>
					</div>
					<div class ="row">
						<div class="col-sm-2">
							<button type="submit" class="btn btn-primary" style="color: white" >Login</button>
						</div>
					</div>
				</form>
			</div>
			</div>
  		</div>      
	</div>
	
	<div class="modal fade" id="Modal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">StoreMe Message</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			        <div class="form-group">
											<center>
									      		<h4>Incorrect Username or Password</h4>
									      	</center>					
			      </div>
			      <div class="modal-footer">
			        <button onClick="No2()" type="button" class="btn btn-primary" data-dismiss="modal">Done</button>
	      </div>
	    </div>
	  </div>
</body>
</html>