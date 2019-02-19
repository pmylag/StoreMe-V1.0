<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<style>
		.rectangle1 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%int i1 = 0;%>
		  <%if (i1 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i1 >= 60 && i1 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i1 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		
		.rectangle2 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <% int i2 = 50; %>
		  <%if (i2 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i2 >= 60 && i2 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i2 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle3 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%int i3 = 0;%>
		  <%if (i3 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i3 >= 60 && i3 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i3 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle4 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%int i4 = 0;%>
		  <%if (i4 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i4 >= 60 && i4 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i4 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle5 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%int i5 = 0;%>
		  <%if (i5 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i5 >= 60 && i5 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i5 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle6 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%int i6 = 0;%>
		  <%if (i6 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i6 >= 60 && i6 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i6 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle7 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%int i7 = 99;%>
		  <%if (i7 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i7 >= 60 && i7 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i7 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle8 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%int i8 = 99;%>
		  <%if (i8 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i8 >= 60 && i8 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i8 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle9 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%int i9 = 99;%>
		  <%if (i9 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i9 >= 60 && i9 <= 90){%>
		  	background-color: #FFA500;	<!-- Orange Fill -->
		  <%}else if(i9 == 100)%>		
		  	background-color: #FF0000;	<!-- Red Fill -->
		}
		.rectangle10 {
		  height: 100px;
		  width: 90px;
		  border-style: solid;
		  border-width: 3px;
		  <%int i10 = 99;%>
		  <%if (i10 < 50){ %>
		  	background-color: #00FF7F;	<!-- Green Fill -->
		  <%}else if (i10 >= 60 && i10 <= 90){%>
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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<title>Add ATM: Step 1</title>
</head>
<body>
<%!				
    int i1;
%>
<script>
function setVar() {
}
</script>

	<%@include file="navbar.jsp" %>
	
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
			
			<button class="btn btn-lg">
				<a href="HomePage.jsp" style="color: black">Back</a>
			</button>
				
			<button class="btn btn-primary btn-lg" type="submit">
				<a href="AddATM2.jsp" style="color: white">Save Changes</a>
			</button>
			</div>
		</div>
		
		<div class="col-sm-8">
			
			<div class="container" style="padding-top: 5em">
				<div class="row">
			    	<div class="col">
			    		<div class="col-sm-1" style="padding-left:5em">
							<div class="rectangle1">
								<button style="background: transparent; border: none !important;">
									<h4><p>SECTION 1<br> <%out.print(i1); %>/100</p></h4>
								</button>
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
								<h4><p class="text-center">SECTION 8<br> 0/100</p></h4>
							</div>
						</div>
					    <div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 9<br> 0/100</p></h4>
							</div>
						</div>
						<div class="col-sm-1" style="padding-left:7em; padding-top:2em">
							<div class="rectangle1">
								<h4><p class="text-center">SECTION 10<br> 0/100</p></h4>
							</div>
						</div>
				    </div>
		    	</div>
		    	
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
			
		</div>
</body>
</html>