<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<style>
		.navbar-custom {
		    background-color: #3498DB;
		}
		</style>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
  		<script src="bootstrap-3.3.7-dist/jquery/jquery.min.js"></script>
 		<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<title>StoreMe</title>
	</head>
	<body>
	
		<nav class="navbar navbar-custom">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" style="color: white">StoreMe</a>
				</div>
				
			<ul class="nav navbar-nav">
				<li><a href="HomePage.jsp" style="color: white">Home</a></li>
				<% int id = (Integer)session.getAttribute("iduser"); %>
				<%if(session.getAttribute("privilege1") != null || session.getAttribute("privilege3") != null) {%>
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" style="color: white">Options <span class="caret"></span></a>
		        	<ul class="dropdown-menu">
		          		<li><a href="EditUsersServlet?id=<%= id %>">Account Information</span></a></li>
			          	<li><a href="ChangePasswordServlet?id=<%= id %>">Change Password</span></a></li>
			          	<li>
						    <%if (session.getAttribute("privilege1") != null){ %> <%-- Only admin which has privilege of 1 can add an account --%>
					      		<a href="AddAccount.jsp">Add Account</span></a>
						     	<a href = "ViewAllUsersServlet">View Users</a>
					      	<%} %>
			          	</li>
			        </ul>
		      	</li>
		      	<%} %>
			</ul>
			<ul class="nav navbar-nav navbar-right">
	      		 
			 	 <%if(session.getAttribute("privilege1") != null || session.getAttribute("privilege3") != null) {%>
		         <li><a href="EditUsersServlet?id=<%= id %>"><span style="color: white" class="glyphicon glyphicon-user"></span></a></li>
		         <%} %>
		      <li>
			  	<form action="Logout" class="navbar-form navbar-right">
      				<input type="submit" class="btn btn-primary" value="Logout" onclick = "myFunction2()" style="color: white">
      				<script>
						function myFunction2() {
    					alert("Successfully Logged Out.");
						}
					</script>
      		 	</form>
			  
			  </li>
		    </ul>
		  </div>
		</nav>
	</body>
</html>