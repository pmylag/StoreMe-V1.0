<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<style>
	
</style>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Create New Account</title>
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
	      <li><a href = "ViewAllUsersServlet">View Users</a>
	      
	    </ul>
	  </div>
	</nav>
		
		
	<div class="container">
		<h1>Create New Account</h1>
		
		<script type="text/javascript">
		function checkForm(form)
		{
			re = /^[a-zA-Z ]*$/;
			if (!re.test(form.firstname.value)){
				alert("No Numbers or Special Characters allowed for First Name");
				form.firstname.focus();
				return false;
			}
			
			re = /^[a-zA-Z ]*$/;
			if (!re.test(form.lastname.value)){
				alert("No Numbers or Special Characters allowed for Last Name");
				form.lastname.focus();
				return false;
			}
			
			re = /^[0-9 ]{11}$/;
			if (!re.test(form.mobilenumber.value)){
				alert("No letters, must exactly be 11 digits for the Mobile number");
				form.mobilenumber.focus();
				return false;
			}
			if(form.password.value != form.password2.value){
				alert("Passwords must be equal");
				form.password.focus();
				return false;
			}
			
			
			return true;
		}
		
		</script>
		
		<form action = "AddUserServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);">
			<div class="form-group">
				<div class="col-sm-4">
					<div>
						<label for="usr">First Name:</label>
	  					<input type="text" class="form-control" id="usr" placeholder="Ex. Juan" name = "firstname" required>
  					</div>
  					<div>
						<label for="addr">Address:</label>
	  					<input type="text" class="form-control" id="addr" placeholder="Ex. Espana, Manila" name = "address" required>
					</div>
					<div>
						<label for="usrname">Username:</label>
	  					<input type="text" class="form-control" id="usrname" placeholder="jDelaCruz" name = "username" required>
  					</div>
					<div>
						<label for="password">Password:</label>
  						<input type="password" class="form-control" id="password" placeholder="************" name = "password" required>
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
								<input type="submit" class="btn btn-lg btn-primary" value="Save">
							</div>
						</div>
					</div>
					
					
				</div>
				<div class="col-sm-4">
					<div>
						<label for="usr1">Last Name:</label>
  						<input type="text" class="form-control" id="usr1" placeholder="Ex. De la Cruz" name = "lastname" required>
					</div>
					<div>
						<label for="email">Email Address:</label>
  						<input type="email" class="form-control" id="email" placeholder="Ex. juandelacruz@domain.com" name = "emailaddress" required>
					</div>
					<div>
						<label for="mobile">Mobile Number:</label>
	  					<input type="number" class="form-control" id="addr" placeholder="Ex. 09177777777" min="1" name = "mobilenumber" maxlength = "11" required>
					</div>
					<div>
						<label for="confPassword">Confirm Password:</label>
  						<input type="password" class="form-control" id="confPassword" placeholder="************" name = "password2" required>
					</div>
					<div>
						<label for="privilege">Privilege: </label>
				     	<select class="form-control" id="privilege" name = "privilege" required>
			     	 		<option value="1" name = "privilege">Administrator</option>
			     	 		<option value="2" name = "privilege">Inventory Supervisor</option>
			     	 		<option value="3" name = "privilege">Warehouse Assistant</option>
				     	 </select>
					</div>
				</div>
				<div class="col-sm-4">
					<img src="avatar.png">
				</div>
		</form>
	</div>

	<div class="modal fade" id="Modals" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
				      		<h4>Do you want to save this new information?</h4>
				      	</center>					
			      	</div>
			      	<div class="modal-footer">
			        	<button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
			        	<input type="submit" class="btn btn-lg btn-primary" value="Save">
	      			</div>
    			</div>
	  		</div>
		</div>
	
	<div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
				      		<h4>Successfuly saved information</h4>
				      	</center>					
			      	</div>
		      		<div class="modal-footer">
			        	<button onClick="No2()" type="button" class="btn btn-primary" data-dismiss="modal">Done</button>
	      			</div>
    			</div>
	  		</div>
		</div>
	
</body>
</html>