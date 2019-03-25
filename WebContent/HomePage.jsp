<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<title>StoreMe</title>
</head>
<body>
<%	

  if(session.getAttribute("username")==null){
	  	response.sendRedirect("error.jsp");
	}

  
%>
	<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">StoreMe</a>
				</div>
				
			<ul class="nav navbar-nav">
				<li><a href="HomePage.jsp">Home</a></li>
				<%! int priv = 3; %>
				<%if (session.getAttribute("privilege1") != null) {%>
					<li><a>Welcome, Administrator</a></li>
				<%}else if (session.getAttribute("privilege2") != null) { %>
					<li><a>Welcome, Team Lead</a></li>
				<% } else if (session.getAttribute("privilege3") != null) {%>
					<li><a>Welcome, Warehouse Assistant</a></li>
				<% }else if (session.getAttribute("privilege4") != null) {%>
					<li><a>Welcome, Team Leader</a></li>
				<% }%>
			</ul>
			<ul class="nav navbar-nav navbar-right">
			  <% int id = (Integer)session.getAttribute("iduser"); %>
			  <%if(session.getAttribute("privilege1") != null || session.getAttribute("privilege3") != null) {%>
		      <li><a href="EditUsersServlet?id=<%= id %>"><span class="glyphicon glyphicon-user"></span></a></li>
		      <%} %>
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
	
	<div class="container">
		<div class="jumbotron" style="background-color:white;">
			<div class="col-sm-4">
			
				<%if(session.getAttribute("privilege1") != null || session.getAttribute("privilege2") != null) {%>
					<a href="AddAtmSectionServlet">
						<img src="atm.png" style="height:300px; width:300px">
					</a>
				<%} else if(session.getAttribute("privilege3") != null) {%>
					<img src="atm.png" style="height:300px; width:300px">
				<%} %>
				<h2 class="text-center">New ATM Information</h2>
			</div>
			<div class="col-sm-4">
				<a href="GetAllAtmInfoServlet">
					<img src="computer.png" style="height:300px; width:300px">
				</a>
				<h2 class="text-center"><a href="">FindMe</a></h2>
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