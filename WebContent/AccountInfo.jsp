<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<style>
	
</style>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Account Information</title>
</head>
<body>
	<%@include file="navbar.jsp" %>
	<nav class="navbar navbar-default navbar-custom">
			<div class="container-fluid">
				
			<ul class="nav navbar-header navbar-nav">
		      <li><a href="AccountInfo.jsp">Account Information</span></a></li>
		      <li><a href="ChangePassword.jsp">Change Password</span></a></li>
		    </ul>
		  </div>
		</nav>
		
		
	<div class="container">
		<h1>Account Information</h1>
		<form>
			<div class="form-group">
				<div class="col-sm-4">
					<div>
						<label for="usr">First Name:</label>
	  					<input type="text" class="form-control" id="usr" placeholder="Ex. Juan">
  					</div>
  					<div>
						<label for="addr">Address:</label>
	  					<input type="text" class="form-control" id="addr" placeholder="Ex. Espana, Manila">
					</div>
					<div>
						<label for="mobile">Mobile Number:</label>
	  					<input type="number" class="form-control" id="addr" placeholder="Ex. Espana, Manila">
					</div>
					<div>
						<div class="col-sm-3">
							<div style = "padding-top: 1em; padding-right:5em">
								<button class="btn" href="#">Back</button>
							</div>
						</div>
						<div class="col-sm-3">
							<div style = "padding-top: 1em">
								<button class="btn btn-primary" type="submit">Save Changes</button>
							</div>
						</div>
					</div>
					
					
				</div>
				<div class="col-sm-4">
					<div>
						<label for="usr1">Last Name:</label>
  						<input type="text" class="form-control" id="usr1" placeholder="Ex. De la Cruz">
					</div>
					<div>
						<label for="email">Email Address:</label>
  						<input type="email" class="form-control" id="email" placeholder="Ex. juandelacruz@domain.com">
					</div>
					
				</div>
				<div class="col-sm-4">
					<img src="avatar.png">
				</div>
				
				
			</div>
			
			
		</form>
	</div>

</body>
</html>