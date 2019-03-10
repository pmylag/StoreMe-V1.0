<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>   
<!DOCTYPE html>
<html>
<head>
	<style>
		.rectangle1 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  
		  <%! int i1 = 0; %>
		  <%i1 = (int)request.getAttribute("in1");%>
		  <%if (i1 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i1 >= 51 && i1 <= 99){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i1 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		
		.rectangle2 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%! int i2 = 0;%>
		  <% i2 = (int)request.getAttribute("in2");%>
		  <%if (i2 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i2 >= 51 && i2 <= 99){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i2 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle3 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%! int i3 = 0;%>		  
		  <%i3 = (int)request.getAttribute("in3");%>
		  <%if (i3 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i3 >= 51 && i3 <= 99){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i3 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle4 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%! int i4 = 0;%>
		  <%i4 = (int)request.getAttribute("in4");%>
		  <%if (i4 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i4 >= 51 && i4 <= 99){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i4 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle5 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%! int i5 = 0;%>		  
		  <%i5 = (int)request.getAttribute("in5");%>
		  <%if (i5 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i5 >= 51 && i5 <= 99){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i5 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle6 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%!int i6 = 0;%>
		  <%i6 = (int)request.getAttribute("in6");%>
		  <%if (i6 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i6 >= 51 && i6 <= 99){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i6 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle7 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%! int i7 = 0;%>
		  <%i7 = (int)request.getAttribute("in7");%>
		  <%if (i7 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i7 >= 51 && i7 <= 99){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i7 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle8 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%! int i8 = 0;%>		  
		  <%i8 = (int)request.getAttribute("in8");%>
		  <%if (i8 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i8 >= 51 && i8 <= 99){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i8 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle9 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%! int i9 = 0;%>		  
		  <%i9 = (int)request.getAttribute("in9");%>
		  <%if (i9 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i9 >= 51 && i9 <= 99){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i9 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle10 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%! int i10 = 0;%>		  
		  <%i10 = (int)request.getAttribute("in10");%>
		  <%if (i10 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i10 >= 51 && i10 <= 99){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i10 == 100)%>		
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	
	<title>Add ATM: Step 1</title>
</head>
<body>
	<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand">StoreMe</a>
				</div>
				
			<ul class="nav navbar-nav">
				<li><a href="HomePage.jsp">Home</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
		      <li><a href="AccountInfo.jsp"><span class="glyphicon glyphicon-user"></span></a></li>
		      <li><a href="WelcomePage.jsp"><span class="glyphicon glyphicon-log-in" style="padding-right:5em"></span></a></li>
		    </ul>
		  </div>
		</nav>
	
	<div class="container">
		<div class="col-md-6">
			<h2>ATM Placement</h2>
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
			<form action = "AddAtmSectionServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);">
				<div>
				    <div class="form-group">
				      	<label for="sel1">Choose Section: </label>
				     	 <select class="form-control" id="sel1" name = "atmplacement" required>
				     	 <%if (i1 < 100){ %>
				     	 	<option value="A" name = "atmplacement">A</option>
				     	 <%} if(i2 < 100){ %>
				     	 	<option value="B" name = "atmplacement">B</option>
				     	 <%} if(i3 < 100){ %>
				     	 	<option value="C" name = "atmplacement">C</option>
				     	 <%} if(i4 < 100){ %>
				     	 	<option value="D" name = "atmplacement">D</option>
				     	 <%} if(i5 < 100){ %>
				     	 	<option value="E" name = "atmplacement">E</option>
				     	 <%} if(i6 < 100){ %>
				     	 	<option value="F" name = "atmplacement">F</option>
				     	 <%} if(i7 < 100){ %>
				     	 	<option value="G" name = "atmplacement">G</option>
				     	 <%} if(i8 < 100){ %>
				     	 	<option value="H" name = "atmplacement">H</option>
				     	 <%} if(i9 < 100){ %>
				     	 	<option value="I" name = "atmplacement">I</option>
				     	 <%} if(i10 < 100){ %>
				     	 	<option value="J" name = "atmplacement">J</option>
				     	 <%}%>
				
				     	 </select>
					</div>
			    </div>
			
				<button class="btn btn-lg">
					<a href="HomePage.jsp" style="color: black">Back</a>
				</button>
				
				<input type="submit" class="btn btn-lg btn-info" value="Next">
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
								<h4><p class="text-center">SECTION A<br> <%out.print(i1); %>/100</p></h4>
							</div>
						</div>
					    <div class="col-sm-1" style="padding-left:7em">
							<div class="rectangle2">
								<h4><p class="text-center">SECTION B<br> <%out.print(i2); %>/100</p></h4>
							</div>
						</div>
						<div class="col-sm-1" style="padding-left:7em">
							<div class="rectangle3">
								<h4><p class="text-center">SECTION C<br> <%out.print(i3); %>/100</p></h4>
							</div>
						</div>
				    </div>
		    	</div>
		    	<div class="row">
		    		<div class="col">
			    		<div class="col-sm-1" style="padding-left:5em; padding-top:2em">
							<div class="rectangle4">
								<h4><p class="text-center">SECTION D<br> <%out.print(i4); %>/100</p></h4>
							</div>
						</div>
					    <div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle5">
								<h4><p class="text-center">SECTION E<br> <%out.print(i5); %>/100</p></h4>
							</div>
						</div>
						<div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle6">
								<h4><p class="text-center">SECTION F<br> <%out.print(i6); %>/100</p></h4>
							</div>
						</div>
						<div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle7">
								<h4><p class="text-center">SECTION G<br> <%out.print(i7); %>/100</p></h4>
							</div>
						</div>
				    </div>
		    	</div>
		    	<div class="row">
		    		<div class="col">
			    		<div class="col-sm-1" style="padding-left:5em; padding-top:2em">
							<div class="rectangle8">
								<h4><p class="text-center">SECTION H<br> <%out.print(i8); %>/100</p></h4>
							</div>
						</div>
					    <div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle9">
								<h4><p class="text-center">SECTION I<br> <%out.print(i9); %>/100</p></h4>
							</div>
						</div>
						<div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle10">
								<h4><p class="text-center">SECTION J<br> <%out.print(i10); %>/100</p></h4>
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
							  <a href="#" class="list-group-item" style="background-color: #00FF7F">0 	- 50 AVAILABLE</a>
							  <a href="#" class="list-group-item" style="background-color: #FFA500">50  - 99 ALMOST FULL</a>
							  <a href="#" class="list-group-item" style="background-color: #FF0000">100 - FULL</a>
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