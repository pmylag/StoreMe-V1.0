<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="Style/bootstrap-4.0.0-dist/bootstrap.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
	.bg-company-blue {
    background-color: #5079D8;
	}
	
	li.borderless { border-top: 0 none;
					border-bottom: 0 none;
					border-left:0 none;
					border-right: 0 none; }
	
</style>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>All Users</title>
	
</head>
<body>
	<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">StoreMe</a>
				</div>
				
			<ul class="nav navbar-nav">
				<li><a href="HomePage.jsp">Home</a></li>
				<li><a>Welcome, User</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
		      <li><a href="AccountInfo.jsp"><span class="glyphicon glyphicon-user"></span></a></li>
		      <li><a href="WelcomePage.jsp"><span class="glyphicon glyphicon-log-in" style="padding-right:5em"></span></a></li>
		    </ul>
		  </div>
	</nav>
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
	
	<div class = "container">
		<div class = "row">
		<div class = "col-sm-2">
			SEARCH BY : 
		</div>
		<div class = "col-sm-2">
			<input type="text" placeholder="Search">
		</div>
		<div class = "col-sm-1">
			<button type="button" class="btn btn-light">Search</button>
		</div>
		</div>
		<div class = "row">
		<div class="container-fluid">
			<table class="table table-bordered">
			  <thead class = "bg-company-blue">
			    <tr>
			      <th scope="col"> <font color="white"> First Name</font></th>
			      <th scope="col"> <font color="white"> Last Name</font></th>
			      <th scope="col"> <font color="white"> Username </font> </th>
			      <th scope="col"> <font color="white"> Privilege </font> </th>
			      <th scope="col"> <font color="white"> Address </font> </th>
			      <th scope="col"> <font color="white"> Email Address </font> </th>
			      <th scope="col"> <font color="white"> Mobile Number </font> </th>
			      <th scope="col"> <font color="white"> Edit </font> </th>
			      <th scope="col"> <font color="white"> Delete </font> </th>
				  
			    </tr>
			  </thead>
			  <tbody>
			  	<c:forEach items="${userlist}"  var= "u">
				  	<tr>
				  	  <td>${u.firstname } </td>
				  	  <td>${u.lastname } </td>
				  	  <td>${u.username } </td>
				  	  <td>${u.privilege } </td>
				  	  <td>${u.address } </td>
				  	  <td>${u.emailaddress } </td>
				  	  <td>${u.mobilenumber } </td>
				  	  <td>
				  	  	  <a href="EditAtmInfoServlet?id=${a.idatminfo }" class="btn btn-primary a-btn-slide-text">
					        <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>           
					      </a>
					  </td>
					  <td><a href="DeleteAtmServlet?id=${a.idatminfo }" class="btn btn-danger a-btn-slide-text">
					        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>	                 
					      </a>
					  </td>
				  	</tr>
				  </c:forEach>
			  </tbody>
			 </table>
			 
		<div class="modal fade" id="Modalss" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">Activity</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        <div class="panel panel-default">
						<div class="panel panel-default">
							
						<div class="panel-heading">  
					 		<h4 class = "text-center"><font color="black">83-PNB-SS23
					</font></h4>
					 	</div>
					 	
					 <font color="gray">	
					 	
					 	<div class="panel-body bg-default">
						<div class="form-group">
									      <div class="col-sm-12">
									      	<center>
									      		<h4>ATM Canopy installation, with light installation.</h4>
									      	</center>				
									      </div>
									      
								  </div>
								  </div>
							      </div>
							  </div>
				      </div>
				      <div class="modal-footer">
				        <button onClick="No20()" type="button" class="btn btn-primary" data-dismiss="modal">Done</button>
		      </div>
		    </div>
		  </div>
		</div>
		<div class="modal fade" id="ModalYo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">Checklist</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        <div class="panel panel-default">
						<div class="panel panel-default">
							
						<div class="panel-heading">  
					 		<h4 class = "text-center"><font color="black">83-PNB-SS23
					</font></h4>
					 	</div>
					 	
					 <font color="gray">	
					 	
					 	<div class="panel-body bg-default">
						<div class="form-group">
									      <div class="col-sm-4">
									      	<ul class="list-group">
											  <li class="list-group-item borderless"><b>Checker: </b><u>Jose P. De Leon</u></li>
											  <li class="list-group-item borderless"><b>Warehouse Assistant: </b><u>Jasmin A. Cruz</u></li>
											  <li class="list-group-item borderless"><b>Bank: </b><u>PNB</u> </li>
											  <li class="list-group-item borderless"><b>Consignee: </b><u>NCR</u> </li>
											  <li class="list-group-item borderless"><b>Driver: </b><u>Pepito Santos</u> </li>
											  <li class="list-group-item borderless"><b>Plate No: </b><u>PPM-902</u> </li>
											  <li class="list-group-item borderless"><b>Cassette: </b><u>1.2.4< </li>
											  
											</ul>					
									      </div>
									      
									      <div class ="col-sm-8">
											<table class="table table-borderless">
											  <thead>
											    <tr>
											      <th scope="col">Description</th>
											      <th scope="col">Quantity</th>
											      <th scope="col">Remarks</th>
											    </tr>
											  </thead>
											  <tbody>
											    <tr>
											      <td>1. Atm</td>
											      <td>1</td>
											      <td></td>
											    </tr>
											    <tr>
											      <td>2. Bolting Screws Set</td>
											      <td>2</td>
											      <td></td>
											    </tr>
											    <tr>
											      <td>3. Cash Cassette Keys</th>
											      <td>1</td>
											      <td></td>
											    </tr>
											    <tr>
											      <td>4. Cladding</th>
											      <td>1</td>
											      <td></td>
											    </tr>
											    <tr>
											      <td>5. Collar</th>
											      <td>4</td>
											      <td></td>
											    </tr>
											    <tr>
											      <td>6. Decals</th>
											      <td>2</td>
											      <td></td>
											    </tr>
											    <tr>
											      <td>7. Fascia/Window Frames</th>
											      <td>1</td>
											      <td></td>
											    </tr>
											  </tbody>
											</table>
									      </div>
									      
								  </div>
								  </div>
							      </div>
							  </div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn submit" data-dismiss="modal">Print</button>
				        <button onClick="No20()" type="button" class="btn btn-primary" data-dismiss="modal">Done</button>
		      </div>
		    </div>
		  </div>
		</div>
			 
		<div id="EditModals" class="modal fade" role="dialog">
		  <div class="modal-dialog">
		
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title">Edit Entry</h4>
		      </div>
		      <div class="modal-body">
	<div class="panel panel-default">
	<div class="panel panel-default">
		
	<div class="panel-heading">  
 		<h4 class = "text-center"><font color="black">83-PNB-SS23
</font></h4>
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
		      <div class="modal-footer">
					          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			  </div>
		    </div>
		
		  </div>
		</div>
		
		</div>
	 	</div>
	 </div>
</body>
</html>