<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Change Password</title>
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
		<h1>Change Password</h1>
		<form>
			<div class="form-group">
				<div class="col-sm-4">
					<div>
						<label for="currPword">Current Password:</label>
	  					<input type="passsword" class="form-control" id="currPword" placeholder="*******">
  					</div>
  					<div>
						<label for="newPword">New Password:</label>
	  					<input type="passsword" class="form-control" id="newPword" placeholder="*******">
  					</div>
					<div>
						<label for="repPword">Repeat Password:</label>
	  					<input type="passsword" class="form-control" id="repPword" placeholder="*******">
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
					<img src="lock.png">
				</div>
				
				
			</div>
			
			
		</form>
	</div>
</body>
</html>