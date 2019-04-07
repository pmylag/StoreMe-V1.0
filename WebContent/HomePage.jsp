<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<style>
	.navbar-custom {
    background-color: #3498DB;
	}
</style>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
  		<script src="bootstrap-3.3.7-dist/jquery/jquery.min.js"></script>
  		<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<title>StoreMe</title>
	</head>
<body>
<%	

  if(session.getAttribute("username")==null){
	  	response.sendRedirect("error.jsp");
	}

  
%>
	<nav class="navbar navbar-custom">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" style="color: white">StoreMe</a>
				</div>
				
			<ul class="nav navbar-nav">
				<li><a href="HomePage.jsp" style="color: white">Home</a></li>
				<%! int priv = 3; %>
				<%if (session.getAttribute("privilege1") != null) {%>
					<li><a style="color: white">Welcome, Administrator</a></li>
				<%}else if (session.getAttribute("privilege2") != null) { %>
					<li><a style="color: white">Welcome, Team Lead</a></li>
				<% } else if (session.getAttribute("privilege3") != null) {%>
					<li><a style="color: white">Welcome, Warehouse Assistant</a></li>
				<% }else if (session.getAttribute("privilege4") != null) {%>
					<li><a style="color: white">Welcome, Team Leader</a></li>
				<% }%>
			</ul>
			<ul class="nav navbar-nav navbar-right">
			  <% int id = (Integer)session.getAttribute("iduser"); %>
			  <%if(session.getAttribute("privilege1") != null || session.getAttribute("privilege3") != null) {%>
		      <li><a href="EditUsersServlet?id=<%= id %>"><span style="color: white" class="glyphicon glyphicon-user"></span></a></li>
		      <%} %>
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
	
	<div class="container">
		<div class="jumbotron" style="background-color:white;">
			<div class="col-sm-4">
			
				<%if(session.getAttribute("privilege1") != null || session.getAttribute("privilege2") != null) {%>
					<a href="AddAtmSectionServlet">
						<img src="atm.png" style="height:300px; width:300px">
					</a>
				<%} else if(session.getAttribute("privilege3") != null) {%>
					<img src="atm.png" style="height:300px; width:300px">
				<%} else {%>
					<img src="atm.png" style="height:300px; width:300px">
				<%} %>
				<h2 class="text-center">New ATM Information</h2>
			</div>
			<div class="col-sm-4">
				<a href="GetAllAtmInfoServlet">
					<img src="computer.png" style="height:300px; width:300px">
				</a>
				<h2 class="text-center"><a>FindMe</a></h2>
			</div>
			<div class="col-sm-4">
			<a href="HowToUse.jsp">
				<img src="howtouse.jpg" style="height:300px; width:400px">
			</a>
				<h2 class="text-center"> &nbsp &nbsp &nbsp &nbsp How to Use</h2>
			</div>
  		</div>      
	</div>


	
</body>
</html>