<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>   
<!DOCTYPE html>
<html>
<style>
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
		 
</style>
<head>
	<meta charset="ISO-8859-1">
	<title>Add ATM: Step 3</title>
</head>
<body>
	<%@include file="navbar.jsp" %>
		<form action = "AddAtmServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);"> 
			<div class="container">
				<div class="col-md-6">
					<h2>ATM Checklist</h2>
				</div>
				
				<div class="col-md-6" style="padding-top:1em">
					<div class="col-sm-2">
						<div class="circle">
							<h5 class="text-center" style="padding-top:0.25em">1</h5>
						</div>
					</div>	
					<div class="col-sm-2">
						<div class="circle">
							<h5 class="text-center" style="padding-top:0.25em">2</h5>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="circle-active">
							<h5 class="text-center" style="padding-top:0.25em">3</h5>
						</div>
					</div>
				</div>
				
				<div class="col-sm-8">
					<div class="col-sm-4">
						<div class="form-group">
							<label for="chck">*Checker:</label>
							<input type="text" class="form-control" name = "checker"id="chck" required>
						</div>
						<div class="form-group">
							<label for="wh">*Warehouse Assistant:</label>
							<input type="text" class="form-control" id="wh" name = "warehouse_asst" required>
						</div>
					</div>
					
					<div class="col-sm-4">
						<div class="form-group">
							<label for="bk">*Bank:</label>
							<input type="text" class="form-control" id="bk" name = "bank"required>
						</div>
						<div class="form-group">
							<label for="csn">Consignee:</label>
							<input type="text" class="form-control" id="csn" name = "consignee" value="${consignee }" readonly>
						</div>
					</div>
					
					<div class="col-sm-4">
						<div class="form-group">
							<label for="dv">*Driver:</label>
							<input type="text" class="form-control" id="dv" name = "driver" required>
						</div>
						<div class="form-group">
							<label for="pn">*Plate Number:</label>
							<input type="text" class="form-control" id="pn" name = "plateno" required>
						</div>
					</div>
					
					<table class="table table-bordered table-hover">
			    		<thead>
					    	<tr>
						        <th>Description</th>
						        <th>Quantity</th>
						        <th>Remarks</th>
					      	</tr>
					    </thead>
					    <tbody>
					    	<tr>
						        <td>*ATM:</td>
						        <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="atm-qty" name = "quantity" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="atm-rmk" name = "remarks">
									</div>
						        </td>
					     	</tr>
					      	<tr>
						        <td>*Bolting Screw Set:</td>
						        <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="bss-qty" name = "bolt_screw_set_qty" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="bss-rmk" name = "bolt_screw_set_rmk">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Cash Cassette Keys:</td>
						        <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="css-qty" name ="cash_casst_key_qty" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="css-rmk" name ="cash_casst_key_rmk">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Cladding:</td>
						        <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="clad-qty" name ="clad_qty" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="clad-rmk" name = "clad_rmk">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Collar:</td>
						        <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="clr-qty" name = "collar_qty" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="clr-rmk" name = "collar_rmk">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Decals:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="dcl-qty" name = "decale_qty" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="dcl-rmk" name = "decale_qty">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Fascia/Window Frames:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="fwf-qty" name = "fsc_wndw_frame_qty" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="fwf-rmk" name = "fsc_wndw_frame_remk">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Modem:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="mdm-qty" name  = "modem_qty" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="mdm-rmk" name = "modem_rmk">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Panel Door Key:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="pdk-qty" name = "pnl_door_key_qty" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="pdk-rmk" name = "pnl_door_key_rmk">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Pedestal:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="pdl-qty" name = "pedestal_qty" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="pdl-rmk" name = "pedestaL_rmk">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Power Cord:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="pc-qty" name  = "power_crd_qty" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="pc-rmk" name = "power_cord_rmk">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Router:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="rtr-qty" name = "router_qtry"required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="rtr-rmk" name = "router_rmk">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Topper:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="tpr-qty"  name = "topper_qty"required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="tpr-rmk" name = "topper_rmk">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*UPS:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="ups-qty" name = "ups_qty"required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="ups-rmk" name = "ups_rmk">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Vault Door Key:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="vdk-qty" name = "vault_door_key_qty" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="vdk-rmk" name = "vault_door_key">
									</div>
						        </td>
					      	</tr>
					    </tbody>
					</table>
					<button type="button" class="btn btn-lg" data-target="#myModal">Back</button>
					<input type="submit" class="btn btn-lg btn-info" value="Save Changes">
				</div>
				<div class="col-md-4">
					<div class="checkbox">
						<label for="c1"></label>
						<input class="form-check-input" type="checkbox" value="1" id="c1" name = "cassete1">Cassette 1 - 1000</input>
					</div>
					<div class="checkbox">
						<label for="c2"></label>
						<input class="form-check-input" type="checkbox" value="1" id="c2" name = "cassete2">Cassette 2 - 500</input>
					</div>
					<div class="checkbox">
						<label for="c3"></label>
						<input class="form-check-input" type="checkbox" value="1" id="c3" name = "cassete3">Cassette 3 - 500</input>
					</div>
					<div class="checkbox">
						<label for="c4"></label>
						<input class="form-check-input" type="checkbox" value="1" id="c4" name = "cassete4">Cassette 4 - 100</input>
					</div>
				
						<img src="checklist.png">
					</div>
					
					<!-- Modal -->
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog modal-lg">
						    
						    <!-- Modal content-->
						    <div class="modal-content">
						    <div class="modal-header">
						    	<button type="button" class="close" data-dismiss="modal">&times;</button>
						    	<h4 class="modal-title">StoreMe Message</h4>
						    </div>
					       	<div class="modal-body">
						        <div clas="panel">
						        	<h5>Do you want to store this information?</h5>
						        </div>
					       	</div>
						        <div class="modal-footer">
						        	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        	<input type="submit" class="btn btn-lg btn-info" value="Save">
						        </div>
						   	</div>
						</div>
					</div>
			</form>
	</div>
	
</body>
</html>