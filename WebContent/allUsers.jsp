<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
  	<script src="bootstrap-3.3.7-dist/jquery/jquery.min.js"></script>
 	<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style>
	.bg-company-blue {
    background-color: #5079D8;
	}
	
	li.borderless { border-top: 0 none;
					border-bottom: 0 none;
					border-left:0 none;
					border-right: 0 none; 
	}
	
	.navbar-custom {
	    background-color: #3498DB;
	}
</style>
	
</style>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>All Users</title>
	
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
		      <li><a href="EditUsersServlet?id=<%= id %>"><span style="color: white" class="glyphicon glyphicon-user"></span></a></li>
		      <form action="Logout" class="navbar-form navbar-right">
      				<input type="submit" class="btn btn-primary" value="Logout" onclick = "myFunction2()">
      				<script>
						function myFunction2() {
    					alert("Successfully Logged Out.");
						}
					</script>
      		 </form>
     		 </ul>
		  </div>
	</nav>
	
	<div class = "container">
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
						  		<a href="DeleteUsersServlet?id=${u.iduser }" class="btn btn-danger a-btn-slide-text" onclick = "return confirm('Are you sure?')">
						        	<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>	                 
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