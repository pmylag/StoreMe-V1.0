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
	<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<title>Results</title>
</head>
<body>
	<%@include file="navbar.jsp" %>
	<div class="modal-content">
		<div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal">&times;</button>
		  <h4 class="modal-title">Edit Entry ${id }</h4>
		</div>
		<div class="modal-body">
			<div class="panel panel-default">
				<div class="panel panel-default">
					<div class="panel-heading">  
 						<h4 class = "text-center">
 							<font color="black">${sku }</font>
 						</h4>
 					</div>
 	
 					<font color="gray">	
 							<form action = "EditAtmInfoServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);"> 
 							
		 						<div class="panel-body bg-default">
									<div class="form-group">
						      			<div class="col-sm-4">
						      
								  				<div>
												    <div class="form-group">
												      	<label for="sel1">Choose Section: </label>
												     	 <select class="form-control" id="sel1" name = "atmplacement" required>
												     	 <option value="A" name = "atmplacement">A</option>
												     	 <option value="B" name = "atmplacement">B</option>
												     	 <option value="C" name = "atmplacement">C</option>
												     	 <option value="D" name = "atmplacement">D</option>
												     	 <option value="E" name = "atmplacement">E</option>
												     	 <option value="F" name = "atmplacement">F</option>
												     	 <option value="G" name = "atmplacement">G</option>
												     	 <option value="H" name = "atmplacement">H</option>
												     	 <option value="I" name = "atmplacement">I</option>
												     	 <option value="J" name = "atmplacement">J</option>
												
												     	 </select>
													</div>
											   </div>
											
											<div class="input-group date" style = "padding-top: 1em" data-provide="datepicker">
									   			<label for="uses">Date Shipped: </label>
									    		<input type="date" class="form-control" id="Uses" name = "date_shipped">
									    	</div>
											<div class="form-group">
												<label for="sel1">Status:</label>
												<select class="form-control" id="sel1" name = "status" required>
													<option value="InProgress">In Progress</option>
													<option value="Returned">Returned</option>
												</select>
											</div>
											<div class="Row" style = "padding-top: 1em">
												<div class="form-group">
												  <label for="usr">Received by: </label>
												  <input type="text" class="form-control" id="usr" name = "received_by">
												</div>
												<div class="form-group">
												  <label for="usr">Id: </label>
												  <input type="text" class="form-control" id="usr" name = "id" value = ${id } readonly>
												</div>
											</div> 
										<input type="submit" class="btn btn-lg btn-info" value="Submit">						
						      		</div>
									<div class ="col-sm-8">
								    	<div class="form-group">
											<label for="comment">Activity: </label>
											<textarea class="form-control" rows="7" id="comment" name = "activity"></textarea>
										</div>
									</div>
						  		</div>
					  		</div>
					  		
					 	 </form>
					 </font>
		      	</div>
		  	</div>
		</div>
	</div>
</body>
</html>