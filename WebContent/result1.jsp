<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>   
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="Style/bootstrap-4.0.0-dist/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="Style/styles.css">
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<meta charset="ISO-8859-1">
<title>Results</title>
</head>
<body>
	<%@include file="navbar.jsp" %>
	
	<div class="container">
  		<h2>Checklist</h2>
		<div class="panel panel-default">
    		<div class="panel-heading">${sku }</div>
    		<div class="panel-body">
    			<c:forEach items="${atm}" var = "a">
					<div class="form-group">
						<div class="col-sm-4">
							<ul class="list-group">
								<li class="list-group-item borderless"><b>Checker: </b><u>${a.checker }</u></li>
									<li class="list-group-item borderless"><b>Warehouse Assistant: </b><u>${a.warehouse_asst }</u></li>
									<li class="list-group-item borderless"><b>Bank: </b><u>${a.bank }</u> </li>
								  	<li class="list-group-item borderless"><b>Consignee: </b><u>${a.consignee }</u> </li>
								  	<li class="list-group-item borderless"><b>Driver: </b><u>${a.driver}</u> </li>
								  	<li class="list-group-item borderless"><b>Plate No: </b><u>${a.plateno }</u> </li>
								  	<li class="list-group-item borderless"><b>Cassette: </b><u>${cassette}</u> </li>
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
										<td>1. ATM</td>
									    <td>${a.quantity }</td>
									    <td>${a.remarks }</td>
									</tr>
									<tr>
										<td>2. Bolting Screw Set</td>
									    <td>${a.bolt_screw_set_qty }</td>
									    <td>${a.bolt_screw_set_rmk }</td>
									</tr>
									<tr>
										<td>3. Cash Cassette Keys</th>
									    <td>${a.cash_casst_key_qty }</td>
									    <td>${a.cash_casst_key_rmk }</td>
									</tr>
									<tr>
										<td>4. Cladding</th>
										<td>${a.clad_qty }</td>
									    <td>${a.clad_rmk }</td>
									</tr>
									<tr>
										<td>5. Collar</th>
									    <td>${a.collar_qty }</td>
									    <td>${a.collar_rmk }</td>
									</tr>
									<tr>
										<td>6. Decals</th>
									    <td>${a.decale_qty }</td>
									    <td>${a.decale_rmk }</td>
									</tr>
									<tr>
										<td>7. Fascia/Window Frame</th>
									    <td>${a.fsc_wndw_frame_qty }</td>
									    <td>${a.fsc_wndw_frame_remk }</td>
									</tr>
									<tr>
										<td>8. Modem</th>
									    <td>${a.modem_qty }</td>
										<td>${a.modem_rmk }</td>
									</tr>
									<tr>
										<td>9. Panel Door Key</th>
									    <td>${a.pnl_door_key_qty }</td>
										<td>${a.pnl_door_key_rmk }</td>
									</tr>											
									<tr>
										<td>10. Pedestal</th>
									    <td>${a.pedestal_qty }</td>
										<td>${a.pedestaL_rmk }</td>
									</tr>											
									<tr>
										<td>11. Power Cord</th>
									    <td>${a.power_crd_qty }</td>
										<td>${a.power_cord_rmk }</td>
									</tr>											
									<tr>
										<td>12. Router</th>
										<td>${a.router_qtry }</td>
									    <td>${a.router_rmk }</td>
									</tr>
																				
									<tr>
										<td>13. Topper</th>
									    <td>${a.topper_qty }</td>
										<td>${a.topper_rmk }</td>
									</tr>											
									<tr>
										<td>14. UPS</th>
									    <td>${a.ups_qty }</td>
									    <td>${a.ups_rmk }</td>
									</tr>											
									<tr>
										<td>15. Vault Door Key</th>
									    <td>${a.vault_door_key_qty }</td>
									    <td>${a.vault_door_key }</td>
									</tr>
								</tbody>
							</table>
						</div>
					</c:forEach>
    		</div>
  			<div class="panel-footer">
  				<button type="button" class="btn submit" data-dismiss="modal" data-toggle="modal" data-target="#printModal">Print</button>
	        	<button onClick="No20()" type="button" class="btn btn-primary" data-dismiss="modal">Done</button>
  			</div>
  		</div>
	</div>

	<!-- Modal -->
  	<div class="modal fade" id="printModal" role="dialog">
    	<div class="modal-dialog">
    
	      	<!-- Modal content-->
	      	<div class="modal-content">
	        	<div class="modal-header">
	          		<button type="button" class="close" data-dismiss="modal">&times;</button>
	          		<h4 class="modal-title">Print Confirmation</h4>
	        	</div>
	        	<div class="modal-body">
	          		<p>Successfully Printed!</p>
	    		</div>
	    		<div class="modal-footer">
	          		<button type="button" class="btn btn-default" data-dismiss="modal">Done</button>
	        	</div>
	      	</div> 
		</div>
  	</div>
</body>
</html>