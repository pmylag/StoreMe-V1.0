<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
					<label for="chck">Checker:</label>
					<input type="text" class="form-control" id="chck">
				</div>
				<div class="form-group">
					<label for="wh">Warehouse Assistant:</label>
					<input type="text" class="form-control" id="wh">
				</div>
			</div>
			
			<div class="col-sm-4">
				<div class="form-group">
					<label for="bk">Bank:</label>
					<input type="text" class="form-control" id="bk">
				</div>
				<div class="form-group">
					<label for="csn">Consignee:</label>
					<input type="text" class="form-control" id="csn">
				</div>
			</div>
			
			<div class="col-sm-4">
				<div class="form-group">
					<label for="dv">Driver:</label>
					<input type="text" class="form-control" id="dv">
				</div>
				<div class="form-group">
					<label for="pn">Plate Number:</label>
					<input type="text" class="form-control" id="pn">
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
				        <td>ATM</td>
				        <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="atm-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="atm-rmk">
							</div>
				        </td>
			     	</tr>
			      	<tr>
				        <td>Bolting Screw Set</td>
				        <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="bss-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="bss-rmk">
							</div>
				        </td>
			      	</tr>
			      	<tr>
				        <td>Cash Cassette Keys</td>
				        <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="css-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="css-rmk">
							</div>
				        </td>
			      	</tr>
			      	<tr>
				        <td>Cladding</td>
				        <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="clad-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="clad-rmk">
							</div>
				        </td>
			      	</tr>
			      	<tr>
				        <td>Collar</td>
				        <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="clr-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="clr-rmk">
							</div>
				        </td>
			      	</tr>
			      	<tr>
				        <td>Decale</td>
				         <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="dcl-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="dcl-rmk">
							</div>
				        </td>
			      	</tr>
			      	<tr>
				        <td>Fascial/Window Frame</td>
				         <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="fwf-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="fwf-rmk">
							</div>
				        </td>
			      	</tr>
			      	<tr>
				        <td>Modem</td>
				         <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="mdm-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="mdm-rmk">
							</div>
				        </td>
			      	</tr>
			      	<tr>
				        <td>Panel Door Key</td>
				         <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="pdk-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="pdk-rmk">
							</div>
				        </td>
			      	</tr>
			      	<tr>
				        <td>Pedestal</td>
				         <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="pdl-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="pdl-rmk">
							</div>
				        </td>
			      	</tr>
			      	<tr>
				        <td>Power Cord</td>
				         <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="pc-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="pc-rmk">
							</div>
				        </td>
			      	</tr>
			      	<tr>
				        <td>Router</td>
				         <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="rtr-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="rtr-rmk">
							</div>
				        </td>
			      	</tr>
			      	<tr>
				        <td>Topper</td>
				         <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="tpr-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="tpr-rmk">
							</div>
				        </td>
			      	</tr>
			      	<tr>
				        <td>UPS</td>
				         <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="ups-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="ups-rmk">
							</div>
				        </td>
			      	</tr>
			      	<tr>
				        <td>Vault Door Key</td>
				         <td>
				        	<div class="form-group">
								<input type="number" class="form-control" id="vdk-qty">
							</div>
				        </td>
				        <td>
				        	<div class="form-group">
								<input type="text" class="form-control" id="vdk-rmk">
							</div>
				        </td>
			      	</tr>
			    </tbody>
			</table>
			<button type="button" class="btn btn-lg" data-target="#myModal">Cancel</button>
			<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Save Changes</button>
		</div>
		<div class="col-md-4">
			<div class="checkbox">
				<label for="c1"></label>
				<input type="checkbox" value="Casette 1 - 1000" id="c1">Cassette 1 - 1000</input>
			</div>
			<div class="checkbox">
				<label for="c2"></label>
				<input type="checkbox" value="Casette 2 - 500" id="c2">Cassette 2 - 500</input>
			</div>
			<div class="checkbox">
				<label for="c3"></label>
				<input type="checkbox" value="Casette 3 - 500" id="c3">Cassette 3 - 500</input>
			</div>
			<div class="checkbox">
				<label for="c4"></label>
				<input type="checkbox" value="Casette 4 - 100" id="c4">Cassette 4 - 100</input>
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
			        	<button type="button" class="btn btn-primary">
			        		<a href="HomePage.jsp" style="color: white">Save</a>
			        	</button>
			        </div>
			   	</div>
			</div>
		</div>
	</div>
	
</body>
</html>