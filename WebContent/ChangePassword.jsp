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
	      <%!int priv = 1; %> <%-- Checks the privilege of user --%>
	      <%if (priv == 1){ %> <%-- Only admin which has privilege of 1 can add an account --%>
	      	<li><a href="AddAccount.jsp">Add Account</span></a></li>
	      <%} %>
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
								<button class="btn">
									<a href="HomePage.jsp">Back</a>
								</button>
							</div>
						</div>
						<div class="col-sm-3">
							<div style = "padding-top: 1em">
								<button class="btn btn-primary" type="button" data-toggle="modal" data-target="#ModalSave">Save Changes</button>
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
	
	<div class="modal fade" id="ModalSave" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">

				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
									      
									      	<center>
									      		<h4>Password Change Successful</h4>
									      	</center>				
									      

				      </div>
				      <div class="modal-footer">
				        <button onClick="No20()" type="button" class="btn btn-primary" data-dismiss="modal">Done</button>
		      </div>
		    </div>
		  </div>
		</div>
</body>
</html>