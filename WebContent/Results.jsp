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
					border-right: 0 none; }
		
	.navbar-custom {
	    background-color: #3498DB;
	}	
</style>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Store Me</title>
	
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
      				<input type="submit" class="btn btn-info" value="Logout" onclick = "myFunction2()">
      				<script>
						function myFunction2() {
    					alert("Successfully Logged Out.");
						}
					</script>
      		 </form></li>
	    	</ul>
		</div>
	</nav>
	
	<div class = "container-fluid">
		<div class="page-header">
		    	<h1>FindMe</h1>      
	  	</div>
  	</div>
	<div class = "container-fluid">
		<form action = "GetSearchedAtmInfoServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);"> 		
			<div class = "row">
				<div class = "col-md-1">
					SEARCH BY
				</div>
			<div class = "col-xs-2">
				<div class="form-group">
						<% String type = (String)request.getAttribute("type"); %>
						<label for="sel1">Type:</label>
						<select class="form-control" id="sel1" name = "type" required>
							<%if (type.equals("sku")) {%>
							<option selected value="sku">SKU</option>
							<option value="atmplacement">Section</option>
							<option value="consignee">Consignee</option>
							<option value="site">Site & Location</option>
							<option value="date">Date Received</option>
							<option value="time_received">Time Received</option>
							<option value="date_shipped">Date Shipped</option>
							<option value="time_shipped">Time Shipped</option>
							<option value="waybill_no">Waybill Number</option>
							<option value="status">Status</option>
							<option value="received_by">Received By</option>
							<option value="activity">Activity</option>
							<%} else if (type.equals("atmplacement")) {%>
							<option value="sku">SKU</option>
							<option selected value="atmplacement">Section</option>
							<option value="consignee">Consignee</option>
							<option value="site">Site & Location</option>
							<option value="date">Date Received</option>
							<option value="time_received">Time Received</option>
							<option value="date_shipped">Date Shipped</option>
							<option value="time_shipped">Time Shipped</option>
							<option value="waybill_no">Waybill Number</option>
							<option value="status">Status</option>
							<option value="received_by">Received By</option>
							<option value="activity">Activity</option>
							<%} else if (type.equals("consignee")) {%>
							<option value="sku">SKU</option>
							<option value="atmplacement">Section</option>
							<option selected value="consignee">Consignee</option>
							<option value="site">Site & Location</option>
							<option value="date">Date Received</option>
							<option value="time_received">Time Received</option>
							<option value="date_shipped">Date Shipped</option>
							<option value="time_shipped">Time Shipped</option>
							<option value="waybill_no">Waybill Number</option>
							<option value="status">Status</option>
							<option value="received_by">Received By</option>
							<option value="activity">Activity</option>							
							<%} else if (type.equals("site")) {%>
							<option value="sku">SKU</option>
							<option value="atmplacement">Section</option>
							<option value="consignee">Consignee</option>
							<option selected value="site">Site & Location</option>
							<option value="date">Date Received</option>
							<option value="time_received">Time Received</option>
							<option value="date_shipped">Date Shipped</option>
							<option value="time_shipped">Time Shipped</option>
							<option value="waybill_no">Waybill Number</option>
							<option value="status">Status</option>
							<option value="received_by">Received By</option>
							<option value="activity">Activity</option>	
							<%} else if (type.equals("date")) {%>
							<option value="sku">SKU</option>
							<option value="atmplacement">Section</option>
							<option value="consignee">Consignee</option>
							<option value="site">Site & Location</option>
							<option selected value="date">Date Received</option>
							<option value="time_received">Time Received</option>
							<option value="date_shipped">Date Shipped</option>
							<option value="time_shipped">Time Shipped</option>
							<option value="waybill_no">Waybill Number</option>
							<option value="status">Status</option>
							<option value="received_by">Received By</option>
							<option value="activity">Activity</option>
							<%} else if (type.equals("time_received")) {%>							
							<option value="sku">SKU</option>
							<option value="atmplacement">Section</option>
							<option value="consignee">Consignee</option>
							<option value="site">Site & Location</option>
							<option value="date">Date Received</option>
							<option selected value="time_received">Time Received</option>
							<option value="date_shipped">Date Shipped</option>
							<option value="time_shipped">Time Shipped</option>
							<option value="waybill_no">Waybill Number</option>
							<option value="status">Status</option>
							<option value="received_by">Received By</option>
							<option value="activity">Activity</option>
							<%} else if (type.equals("date_shipped")) {%>
							<option value="sku">SKU</option>
							<option value="atmplacement">Section</option>
							<option value="consignee">Consignee</option>
							<option value="site">Site & Location</option>
							<option value="date">Date Received</option>
							<option value="time_received">Time Received</option>
							<option selected value="date_shipped">Date Shipped</option>
							<option value="time_shipped">Time Shipped</option>
							<option value="waybill_no">Waybill Number</option>
							<option value="status">Status</option>
							<option value="received_by">Received By</option>
							<option value="activity">Activity</option>
							<%} else if (type.equals("time_shipped")) {%>
							<option value="sku">SKU</option>
							<option value="atmplacement">Section</option>
							<option value="consignee">Consignee</option>
							<option value="site">Site & Location</option>
							<option value="date">Date Received</option>
							<option value="time_received">Time Received</option>
							<option value="date_shipped">Date Shipped</option>
							<option selected value="time_shipped">Time Shipped</option>
							<option value="waybill_no">Waybill Number</option>
							<option value="status">Status</option>
							<option value="received_by">Received By</option>
							<option value="activity">Activity</option>
							<option selected value="time_shipped">Time Shipped</option>
							<%} else if (type.equals("waybill_no")) {%>
							<option value="sku">SKU</option>
							<option value="atmplacement">Section</option>
							<option value="consignee">Consignee</option>
							<option value="site">Site & Location</option>
							<option value="date">Date Received</option>
							<option value="time_received">Time Received</option>
							<option value="date_shipped">Date Shipped</option>
							<option value="time_shipped">Time Shipped</option>
							<option selected value="waybill_no">Waybill Number</option>
							<option value="status">Status</option>
							<option value="received_by">Received By</option>
							<option value="activity">Activity</option>
							<%} else if (type.equals("status")) {%>
							<option value="sku">SKU</option>
							<option value="atmplacement">Section</option>
							<option value="consignee">Consignee</option>
							<option value="site">Site & Location</option>
							<option value="date">Date Received</option>
							<option value="time_received">Time Received</option>
							<option value="date_shipped">Date Shipped</option>
							<option value="time_shipped">Time Shipped</option>
							<option value="waybill_no">Waybill Number</option>
							<option selected value="status">Status</option>
							<option value="received_by">Received By</option>
							<option value="activity">Activity</option>
							<%} else if (type.equals("received_by")) {%>
							<option value="sku">SKU</option>
							<option value="atmplacement">Section</option>
							<option value="consignee">Consignee</option>
							<option value="site">Site & Location</option>
							<option value="date">Date Received</option>
							<option value="time_received">Time Received</option>
							<option value="date_shipped">Date Shipped</option>
							<option value="time_shipped">Time Shipped</option>
							<option value="waybill_no">Waybill Number</option>
							<option value="status">Status</option>
							<option selected value="received_by">Received By</option>
							<option value="activity">Activity</option>
							<%} else if (type.equals("activity")) {%>
							<option value="sku">SKU</option>
							<option value="atmplacement">Section</option>
							<option value="consignee">Consignee</option>
							<option value="site">Site & Location</option>
							<option value="date">Date Received</option>
							<option value="time_received">Time Received</option>
							<option value="date_shipped">Date Shipped</option>
							<option value="time_shipped">Time Shipped</option>
							<option value="waybill_no">Waybill Number</option>
							<option value="status">Status</option>
							<option value="received_by">Received By</option>
 							<option selected value="activity">Activity</option>
							<%} %>
						</select>
				</div>
			</div>
			<div class = "col-xs-2">
				<input class="form-control" type="text" placeholder="Search" name = "like" size="12" value = "${like }">
			</div>
			<div class = "col-md-1">
				<input type="submit" class="btn btn-light" value = "Search">
			</div>
			<div class = "col-md-1">
				<button class="btn">
					<a href="GetAllAtmInfoServlet">Cancel</a>
				</button>
			</div>
			</div>
		</form>
		<div class = "row">
		<div class="container-fluid">
			<table class="table table-bordered">
			  <thead class = "bg-company-blue">
			    <tr>
			      <th scope="col"> <font color="white"> No.</font></th>
			      <th scope="col"> <font color="white"> SKU</font></th>
			      <th scope="col"> <font color="white"> Section </font> </th>
			      <th scope="col"> <font color="white"> Consignee </font> </th>
			      <th scope="col"> <font color="white"> Site & Location </font> </th>
			      <th scope="col"> <font color="white"> Date Received </font> </th>
			      <th scope="col"> <font color="white"> Time Received </font> </th>
			      <th scope="col"> <font color="white"> Date Shipped </font> </th>
			      <th scope="col"> <font color="white"> Time Shipped </font> </th>
			      <th scope="col"> <font color="white"> Waybill Number </font> </th>
			      <th scope="col"> <font color="white"> Status </font> </th>
			      <th scope="col"> <font color="white"> Received By </font> </th>
			      <th scope="col"> <font color="white"> Activity </font> </th>
				  <%! int priv = 1; %>
				  <%if (session.getAttribute("privilege1") != null || priv == 2 || priv == 3) {%>
				    <th scope="col"> <font color="white"> Edit </font> </th>
				  	<th scope="col"> <font color="white"> Delete </font> </th>
				  <%} %>
				  
			    </tr>
			  </thead>
			  <tbody>
			  	<%!int z= 1; int yes = 1; %>
			  	<c:forEach items="${atminfolists}"  var= "a">
				  	<tr>
				  	  <th scope="row"><%= z %></th>
				  	  <% z = z + 1; %>
				  	  <td><a href="GetSelectedServlet?id=${a.idatminfo}">${a.sku }</a> </td>
				  	  <td> ${a.atmplacement }</td>
				  	  <td> ${a.consignee } </td>
				  	  <td> ${a.site } </td>
				  	  <td> ${a.date } </td>
				  	  <td> ${a.time } </td>
				  	  <td> ${a.date_shipped } </td>
				  	  <td> ${a.time_received } </td>
				  	  <td> ${a.waybill_no } </td>
				  	  <td> ${a.status } </td>
				  	  <td> ${a.received_by } </td>
				  	  <td>
			  	  	  	<a href="GetSelectedActivityServlet?id=${a.idatminfo }" class="btn btn-info a-btn-slide-text">
				        	<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>           
				      	</a>
					  </td>
					   <%if (session.getAttribute("privilege1") != null) {%>
				  	  <td>
			  	  	  	<a href="EditAtmInfoServlet?id=${a.idatminfo }" class="btn btn-primary a-btn-slide-text">
				        	<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>           
				      	</a>
					  </td>
					  <%} if (session.getAttribute("privilege1") != null) {%>
					  <td>
					  
						  	
						  	<a href="DeleteAtmServlet?id=${a.idatminfo }" class="btn btn-danger a-btn-slide-text" onclick = "return confirm('Are you sure?')">
				        	<span class="glyphicon glyphicon-trash" aria-hidden="true" >
				        	</span>	
				        	</a>
				         
			                            
				      	
				      	
				      	<script>
						function myFunction3() {
							var b = confirm("Are you sure");	
							if (b == true){
    						alert("Successfully deleted");
    						yes = 0;
							}else{
							alert("cancelled");
							yes = 1;
							}
							
						}
						</script>
					  </td>
					  <%} %>
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