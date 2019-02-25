<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>   
<!DOCTYPE html>
<html>
<head>

${in1 }

	<style>
		.rectangle1 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%int i1 = 0;%>
		  <%if (i1 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i1 >= 51 && i1 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i1 >= 91 && i1 <= 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		
		.rectangle2 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%! int i2 = 50; %>
		  <%if (i2 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i2 >= 51 && i2 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i2 >= 91 && i2 <= 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle3 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%!int i3 = 0;%>
		  <%if (i3 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i3 >= 51 && i3 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i3 >= 91 && i3 <= 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle4 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%!int i4 = 0;%>
		  <%if (i4 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i4 >= 51 && i4 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i4 >= 91 && i4 <= 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle5 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%!int i5 = 0;%>
		  <%if (i5 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i5 >= 51 && i5 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i5 >= 91 && i5 <= 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle6 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%!int i6 = 0;%>
		  <%if (i6 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i6 >= 51 && i6 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i6 >= 91 && i6 <= 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle7 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%!int i7 = 99;%>
		  <%if (i7 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i7 >= 51 && i7 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i7 >= 91 && i7 <= 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle8 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%!int i8 = 99;%>
		  <%if (i8 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i8 >= 51 && i8 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i8 >= 91 && i8 <= 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle9 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%!int i9 = 99;%>
		  <%if (i9 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i9 >= 51 && i9 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i9 >= 91 && i9 <= 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle10 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%!int i10 = 99;%>
		  <%if (i10 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i10 >= 51 && i10 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i10 >= 91 && i10 <= 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		
		.circle {
			height: 50px;
			width: 50px;
			background-color: #FFF;
			border-radius: 50%;
			border-style: solid;
			border-width: 3px;
		}
		.circle-active {
			height: 50px;
			width: 50px;
			background-color: #FFF;
			border-radius: 50%;
			border-style: solid;
			border-width: 3px;
			background-color: #A9A9A9;	
		 }
		.center {
			display: block;
			margin-left: auto;
			margin-right: auto;
			width: 50%;
		}
		
	</style>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	
	<title>Add ATM: Step 1</title>
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
	
	<div class="container">
		<div class="col-md-6">
			<h2>ATM Checklist</h2>
		</div>
		
		<div class="col-md-6" style="padding-top:1em">
			<div class="col-sm-2">
				<div class="circle-active">
					<h5 class="text-center" style="padding-top:0.25em">1</h5>
				</div>
			</div>	
			<div class="col-sm-2">
				<div class="circle">
					<h5 class="text-center" style="padding-top:0.25em">2</h5>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="circle">
					<h5 class="text-center" style="padding-top:0.25em">3</h5>
				</div>
			</div>
		</div>
	</div>

	
	<div class="container">
		<div class="col-sm-4">
			<img src="ATM.jpg">
			<div style="padding-left: 5em; padding-top: 5em">
			<form>
				<div>
				    <div class="form-group">
				      	<label for="sel1">Choose Section: </label>
				     	 <select class="form-control" id="sel1">
				     	 	<% for(int z = 1; z<= 10; z++) {%>
				      	  	<option value="Section<%out.print(z);%>">Section <%out.print(z); %></option>
				      	  	<%} %>
				     	 </select>
					</div>
			    </div>
			
				<button class="btn btn-lg">
					<a href="HomePage.jsp" style="color: black">Back</a>
				</button>
				
				<input class="btn btn-primary btn-lg" type="submit" value="Submit"></input>
			</form>
			<div class="container">		    		
					<h2>Floor Plan</h2>
					<!-- Trigger the modal with a button -->
					<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Open</button>
					
				
					<!-- Modal -->
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog modal-lg">
					    	<!-- Modal content-->
			      			<div class="modal-content">
					     		<div class="modal-header">
					       			<button type="button" class="close" data-dismiss="modal">&times;</button>
					       			<h4 class="modal-title">Floor Plan</h4>
						       </div>
						       <div class="modal-body">
						        	<div clas="panel">
						        		<img class="center" src="FloorPlan.jpg" width="1000px" height="400px "></img>
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
		
		<div class="col-sm-8">
			
			<div class="container" style="padding-top: 5em">
				<div class="row">
			    	<div class="col">
			    		<div class="col-sm-1" style="padding-left:5em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 1<br> <%out.print(i1); %>/100</p></h4>
							</div>
						</div>
					    <div class="col-sm-1" style="padding-left:7em">
							<div class="rectangle2">
								<h4><p class="text-center">SECTION 2<br> <%out.print(i2); %>/100</p></h4>
							</div>
						</div>
						<div class="col-sm-1" style="padding-left:7em">
							<div class="rectangle3">
								<h4><p class="text-center">SECTION 3<br> <%out.print(i3); %>/100</p></h4>
							</div>
						</div>
				    </div>
		    	</div>
		    	<div class="row">
		    		<div class="col">
			    		<div class="col-sm-1" style="padding-left:5em; padding-top:2em">
							<div class="rectangle4">
								<h4><p class="text-center">SECTION 4<br> <%out.print(i4); %>/100</p></h4>
							</div>
						</div>
					    <div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle5">
								<h4><p class="text-center">SECTION 5<br> <%out.print(i5); %>/100</p></h4>
							</div>
						</div>
						<div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle6">
								<h4><p class="text-center">SECTION 6<br> <%out.print(i6); %>/100</p></h4>
							</div>
						</div>
						<div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle7">
								<h4><p class="text-center">SECTION 7<br> <%out.print(i7); %>/100</p></h4>
							</div>
						</div>
				    </div>
		    	</div>
		    	<div class="row">
		    		<div class="col">
			    		<div class="col-sm-1" style="padding-left:5em; padding-top:2em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 8<br> <%out.print(i8); %>/100</p></h4>
							</div>
						</div>
					    <div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 9<br> <%out.print(i9); %>/100</p></h4>
							</div>
						</div>
						<div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 10<br> <%out.print(i10); %>/100</p></h4>
							</div>
						</div>
				    </div>
		    	</div>
		    	<br>	
		    	<div class="container">
			    	<div class="col-sm-4">
			    		<div class="panel panel-default">
						  <div class="panel-heading">Legend</div>
						  <div class="panel-body">
						  	<div class="list-group">
							  <a href="#" class="list-group-item" style="background-color: #00FF7F">0 - 50 </a>
							  <a href="#" class="list-group-item" style="background-color: #FFA500">60 - 90</a>
							  <a href="#" class="list-group-item" style="background-color: #FF0000">91 - 100</a>
							</div>
						  </div>
						</div>
			    	</div>
		    	</div>
			</div>
		</div>
		
	</div>
</body>
</html>