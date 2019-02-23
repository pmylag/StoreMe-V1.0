<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="Style/bootstrap-4.0.0-dist/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="Style/styles.css">
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
<title>Results</title>
</head>
<body>
	<%@include file="navbar.jsp" %>
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
				 		<h4 class = "text-center">
				 			<font color="black">83-PNB-SS23</font>
				 		</h4>
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
</body>
</html>