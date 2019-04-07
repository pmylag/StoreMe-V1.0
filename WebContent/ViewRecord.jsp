<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<style>
	.bg-company-blue {
    background-color: #5079D8;
	}
	
	li.borderless { border-top: 0 none;
					border-bottom: 0 none;
					border-left:0 none;
					border-right: 0 none; }
	.navbar-custom {
		    background-color: #3498DB;
	}
</style>
<head>
	<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="bootstrap-3.3.7-dist/jquery/jquery.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<meta charset="ISO-8859-1">
	<title>View Record</title>
</head>
<body>
	<nav class="navbar navbar-custom">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" style="color: white">StoreMe</a>
			</div>
				
			<ul class="nav navbar-nav">
				<li><a href="HomePage.jsp" style="color: white">Home</a></li>
			</ul>
	    	<ul class="nav navbar-nav navbar-right">
	      		 <% int id = (Integer)session.getAttribute("iduser"); %>
			 	 <%if(session.getAttribute("privilege1") != null || session.getAttribute("privilege3") != null) {%>
		         <li><a href="EditUsersServlet?id=<%= id %>"><span style="color: white" class="glyphicon glyphicon-user"></span></a></li>
		         <%} %>
	      		<li><form action="Logout" class="navbar-form navbar-right">
      				<input type="submit" class="btn btn-primary" value="Logout" onclick = "myFunction2()">
      				<script>
						function myFunction2() {
    					alert("Successfully Logged Out.");
						}
					</script>
      		 </form></li>
	    	</ul>
		</div>
	</nav>
	
	<div class="container">
		<div class="panel panel-default">
  			<div class="panel-heading">${SKU }</div>
  				<div class="panel-body"><p class="text-center">${activity  } </p></div>
		</div>
		<div class="pull-right">
			<button class="btn btn-primary btn-lg ">
				<a href="GetAllAtmInfoServlet" style="color: white">Done</a>
			</button>
			
		</div>
		
	</div>
</body>
</html>