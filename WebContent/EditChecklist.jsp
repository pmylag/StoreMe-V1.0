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
		<script type="text/javascript">
		function checkForm(form)
		{
			re = /^[a-zA-Z ]*$/;
			if (!re.test(form.checker.value)){
				alert("No Numbers or Special Characters allowed for Checker");
				form.checker.focus();
				return false;
			}
			
			re = /^[a-zA-Z ]*$/;
			if (!re.test(form.warehouse_asst.value)){
				alert("No Numbers or Special Characters allowed for Warehouse Assistant");
				form.warehouse_asst.focus();
				return false;
			}
			
			re = /^[a-zA-Z ]*$/;
			if (!re.test(form.driver.value)){
				alert("No Numbers or Special Characters allowed for Driver");
				form.driver.focus();
				return false;
			}
			return true;
			
		}
		
		
		</script>
		
		
		<form action = "UpdateAtmServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);"> 
			<c:forEach items="${atm}" var = "a">
			<div class="container-fluid">
	
				<h2>Checklist Edit</h2>
				
				<div class="col-sm-6">
					<div class="col-sm-4">
						<div class="form-group">
							<label for="chck">*Checker:</label>
							<input type="text" class="form-control" name = "checker"id="chck" value = "${a.checker }" required>
						</div>
						<div class="form-group">
							<label for="wh">*Warehouse Assistant:</label>
							<input type="text" class="form-control" id="wh" name = "warehouse_asst" value = "${a.warehouse_asst }" required>
						</div>
					</div>
					
					<div class="col-sm-4">
						<div class="form-group">
							<label for="bk">*Bank:</label>
							<input type="text" class="form-control" id="bk" name = "bank" value = "${a.bank }"required>
						</div>
						<div class="form-group">
							<label for="csn">Consignee:</label>
							<input type="text" class="form-control" id="csn" name = "consignee" value="${a.consignee }" readonly>
						</div>
					</div>
					
					<div class="col-sm-4">
						<div class="form-group">
							<label for="dv">*Driver:</label>
							<input type="text" class="form-control" id="dv" name = "driver" value = "${a.driver}" required>
						</div>
						<div class="form-group">
							<label for="pn">*Plate Number:</label>
							<input type="text" class="form-control" id="pn" name = "plateno" value = "${a.plateno }" required>
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
										<input type="number" class="form-control" min="0" max="20" id="atm-qty" name = "quantity" value = "1" readonly>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="atm-rmk" name = "remarks" value = "${a.remarks }">
									</div>
						        </td>
					     	</tr>
					      	<tr>
						        <td>*Bolting Screw Set:</td>
						        <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" max="20" id="bss-qty" name = "bolt_screw_set_qty" value = "${a.bolt_screw_set_qty }" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="bss-rmk" name = "bolt_screw_set_rmk" value = "${a.bolt_screw_set_rmk }">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Cash Cassette Keys:</td>
						        <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" max="20" id="css-qty" name ="cash_casst_key_qty" value = "${a.cash_casst_key_qty }"required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="css-rmk" name ="cash_casst_key_rmk" value = "${a.cash_casst_key_rmk }">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Cladding:</td>
						        <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" max="20" id="clad-qty" name ="clad_qty" value = "${a.clad_qty }" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="clad-rmk" name = "clad_rmk" value = "${a.clad_rmk }">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Collar:</td>
						        <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" max="20" id="clr-qty" name = "collar_qty" value = "${a.collar_qty }" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="clr-rmk" name = "collar_rmk" value = "${a.collar_rmk }">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Decals:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" max="20" id="dcl-qty" name = "decale_qty" value = "${a.decale_qty }"required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="dcl-rmk" name = "decale_rmk" value = "${a.decale_rmk }">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Fascia/Window Frames:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" max="20" id="fwf-qty" name = "fsc_wndw_frame_qty" value = "${a.fsc_wndw_frame_qty }"required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="fwf-rmk" name = "fsc_wndw_frame_remk" value = "${a.fsc_wndw_frame_remk }">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Modem:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" max="20" id="mdm-qty" name  = "modem_qty" value = "${a.modem_qty }"required>										
									</div>
									
									<div class="form-group" hidden>
										<input type="text" class="form-control" id="vdk-rmk" name = "idatm" value = "${a.idatm }" readonly>
									</div>
									
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="mdm-rmk" name = "modem_rmk" value = "${a.modem_rmk }">
									</div>
						        </td>
					      	</tr>
					      	
					    </tbody>
					</table>
					<a href = "GetSelectedServlet?id=${a.idatm }" type="button" class="btn btn-lg">Back</a>
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
						        <td>*Panel Door Key:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" max="20" id="pdk-qty" name = "pnl_door_key_qty" value = "${a.pnl_door_key_qty }"required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="pdk-rmk" name = "pnl_door_key_rmk" value = "${a.pnl_door_key_rmk }">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Pedestal:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0"  max="20"id="pdl-qty" name = "pedestal_qty" value = "${a.pedestal_qty }"required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="pdl-rmk" name = "pedestaL_rmk" value = "${a.pedestaL_rmk }">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Power Cord:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" max="20" id="pc-qty" name  = "power_crd_qty" value = "${a.power_crd_qty }" required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="pc-rmk" name = "power_cord_rmk" value = "${a.power_cord_rmk }">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Router:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" max="20" id="rtr-qty" name = "router_qtry" value = "${a.router_qtry }"required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="rtr-rmk" name = "router_rmk" value = "${a.router_rmk }">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Topper:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" max="20" id="tpr-qty"  name = "topper_qty" value ="${a.topper_qty }"required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="tpr-rmk" name = "topper_rmk" value ="${a.topper_rmk }">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*UPS:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" max="20" id="ups-qty" name = "ups_qty" value ="${a.ups_qty }"required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="ups-rmk" name = "ups_rmk" value ="${a.ups_rmk }">
									</div>
						        </td>
					      	</tr>
					      	<tr>
						        <td>*Vault Door Key:</td>
						         <td>
						        	<div class="form-group">
										<input type="number" class="form-control" min="0" id="vdk-qty" max="20"name = "vault_door_key_qty" value ="${a.vault_door_key_qty }"required>
									</div>
						        </td>
						        <td>
						        	<div class="form-group">
										<input type="text" class="form-control" id="vdk-rmk" name = "vault_door_key" value = "${a.vault_door_key }">
									</div>
						        </td>
					      	</tr>
					    </tbody>
				    </table>
				    
					<div class="form-group">
 							<label for="comment">Note:</label>
 							<textarea class="form-control" rows="5" id="comment" name = "note"></textarea>
 							
					</div>
					
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
						        	<a href = "AddATM2.jsp"type="button" class="btn btn-default" data-dismiss="modal">Close</a>
						        	<input type="submit" class="btn btn-lg btn-info" value="Save">
						        </div>
						   	</div>
						</div>
					</div>
			</div>
			</c:forEach>
			</form>
	</div>
	
</body>
</html>
