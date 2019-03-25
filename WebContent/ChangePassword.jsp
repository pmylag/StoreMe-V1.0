<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>   
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
	      <li><a href="EditUsersServlet?id=<%= id %>">Account Information</span></a></li>
	      <li><a href="ChangePasswordServlet?id=<%= id %>">Change Password</span></a></li>
	      <%!int priv = 1; %> <%-- Checks the privilege of user --%>
	      <%if (session.getAttribute("privilege1") != null){ %> <%-- Only admin which has privilege of 1 can add an account --%>
	      	<li><a href="AddAccount.jsp">Add Account</span></a></li>
	        <li><a href = "ViewAllUsersServlet">View Users</a>
	      <%} %>
	      
	    </ul>
	  </div>
	</nav>
	
	<div class="container">
		<h1>Change Password</h1>
		<script type="text/javascript">
		function checkForm(form)
		{
			
			if(form.newpass.value != form.checkpass.value){
				alert("Passwords must be equal");
				form.password.focus();
				return false;
			}
			
			
			return true;
		}
		</script>
		<form action = "ChangePasswordServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);">
			<div class="form-group">
				<div class="col-sm-4">
					<div>
						<label for="currPword">Current Password:</label>
	  					<input type="password" class="form-control" id="currPword" placeholder="*******" name = "ogpass" required>
  					</div>
  					<div>
						<label for="newPword">New Password:</label>
	  					<input type="password" class="form-control" id="newPword" placeholder="*******" name = "newpass" required>
  					</div>
					<div>
						<label for="repPword">Repeat Password:</label>
	  					<input type="password" class="form-control" id="repPword" placeholder="*******" name = "checkpass" required>
  					</div>
					<div>
	  					<input type="textfield" class="form-control" name = "id" value = "${id }" style="visibility: hidden">
  					</div>
					<div>
						<div class="col-sm-3">
							<div style = "padding-top: 1em; padding-right:5em">
								<button class="btn btn-lg">
									<a href="HomePage.jsp">Back</a>
								</button>
							</div>
						</div>
						<div class="col-sm-3">
							<div style = "padding-top: 1em">
								<input type="submit" class="btn btn-lg btn-primary" value="Save">
							</div>
						</div>
					</div>
					<div>
						
  						<input type="hidden" class="form-control" id="id" placeholder="Ex. juandelacruz@domain.com" name = "id" value = "${id }" readonly hidden>
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