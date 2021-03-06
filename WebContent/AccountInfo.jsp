<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Account Information</title>
</head>
<body>
	<%@include file="navbar.jsp" %>
	<div class="container">
		<h1>Account Information</h1>
		
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
					if (!re.test(form.mobile.value)){
						alert("No letters, must exactly be 11 digits for the Mobile number");
						form.mobile.focus();
						return false;
					}
		
					
					
					return true;
				}
		</script>
		<form action = "EditUsersServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);">
			
			
			<div class="form-group">
				<div class="col-sm-4">
					<div>
						<label for="usr">First Name:</label>
	  					<input type="text" class="form-control" id="usr" placeholder="Ex. Juan" name = "firstname" value = "${first }">
  					</div>
  					<div>
						<label for="addr">Address:</label>
	  					<input type="text" class="form-control" id="addr" placeholder="Ex. Espana, Manila" name = "address" value = "${add }">
					</div>
					<div>
						<label for="mobile">Mobile Number:</label>
	  					<input type="text" class="form-control" id="addr" placeholder="Ex. 09177777777" min="1" name = "mobile" value = "${mob }">
					</div>
					<div>
						<div class="col-sm-3">
							<div style = "padding-top: 1em; padding-right:5em">
								<button href="HomePage.jsp" class="btn btn-lg btn-default">Back</button>
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
  						<input type="text" class="form-control" id="usr1" placeholder="Ex. De la Cruz" name = "lastname" value = "${last }">
					</div>
					<div>
						<label for="email">Email Address:</label>
  						<input type="email" class="form-control" id="email" placeholder="Ex. juandelacruz@domain.com" name = "emailaddress" value = "${eadd }">
					</div>
					<div>
						
  						<input type="hidden" class="form-control" id="id" placeholder="Ex. juandelacruz@domain.com" name = "id" value = "${id }" readonly hidden>
					</div>
				</div>
				<div class="col-sm-4">
					<img src="avatar.png">
				</div>
				
				
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