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
			<% int id = (Integer)session.getAttribute("iduser"); %>
		      <li><a href="EditUsersServlet?id=<%= id %>"><span class="glyphicon glyphicon-user"></span></a></li>
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
	
	<div class = "container">
		<form action = "GetSearchedUsersServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);"> 				
			<div class = "row">
				<div class = "col-md-1">
					SEARCH BY : 
				</div>
				
				<div class = "col-md-1">
						<div class="form-group">
								<label for="sel1">Type:</label>
								<select class="form-control" id="sel1" name = "type" required>
									<option value="firstname">First Name</option>
									<option value="lastname">Last Name</option>
									<option value="address">Address</option>
									<option value="emailaddress">Email Address</option>
									<option value="mobilenumber">Mobile Number</option>
									<option value="privilege">Privilege</option>
									<option value="username">Username</option>
								</select>
						</div>
				</div>
				<div class = "col-sm-2">
					<input type="text" placeholder="Search" name = "like">
				</div>
				<div class = "col-sm-1">
				<input type="submit" class="btn btn-light" value = "Search">
				</div>
				<div class = "col-md-1">
				<button class="btn">
					<a href="ViewAllUsersServlet">Cancel</a>
				</button>
			</div>
			</div>
		</form>
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
					      	<th scope="col"> <font color="white"> Change PW </font> </th>
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
				  	  	  		<a href="ChangePasswordServlet?id=${u.iduser }" class="btn btn-primary a-btn-slide-text">
						        	<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>           
						      	</a>
						  	</td>
						   	<td>
				  	  	  		<a href="EditUsersServlet?id=${u.iduser }" class="btn btn-info a-btn-slide-text">
						        	<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>           
						      	</a>
						  	</td>
						  	<td>
						  		<a href="DeleteUsersServlet?id=${u.iduser }" class="btn btn-danger a-btn-slide-text">
						        	<span class="glyphicon glyphicon-trash" aria-hidden="true" onclick = "myFunction3()"></span>	                 
						      	</a>
						      	<script>
									function myFunction3() {
			    						alert("Successfully deleted");
									}
						  		</script>
				  			</td>
			  				</tr>
						</c:forEach>
			  		</tbody>
				</table>		 
			</div>
		</div>
	</div>
</body>
</html>