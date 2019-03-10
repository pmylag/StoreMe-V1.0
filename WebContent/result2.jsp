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
	
	<div class="container">
  		<h2>Edit Entry ${id }</h2>
  		<div class="panel panel-default">
    		<div class="panel-heading">${sku }</div>
   			<div class="panel-body">
   				<form action = "EditAtmInfoServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);"> 
 							
		 						<div class="panel-body bg-default">
									<div class="form-group">
						      			<div class="col-sm-4">
						      
								  				<div>
												    <div class="form-group">
												      	<label for="sel1">Choose Section: </label>
												     	 <select class="form-control" id="sel1" name = "atmplacement" value = "${atm.atmplacement }" required>
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
									    		<input type="date" class="form-control" id="Uses" name = "date_shipped" value = "${date } " >
									    	</div>
									    	<div class="input-group time" style = "padding-top: 1em">
									   			<label for="uses1">Time Shipped: </label>
									    		<input type="time" class="form-control" id="Uses1" name = "time" value = "${time }">
									    	</div>
											<div class="form-group">
												<label for="sel1">Status:</label>
												<select class="form-control" id="sel1" name = "status" value = "${atm.status}" required>
													<option value="Completed">Completed</option>
													<option value="Returned">Returned</option>
												</select>
											</div>
											<div class="Row" style = "padding-top: 1em">
												<div class="form-group">
												  <label for="usr">Received by: </label>
												  <input type="text" class="form-control" id="usr" name = "received_by" value = "${received }">
												</div>
												<div class="form-group">
												  <label for="usr">Id: </label>
												  <input type="text" class="form-control" id="usr" name = "id" value = ${id } readonly>
												</div>
											</div> 
										<input type="submit" class="btn btn-lg btn-info" value="Submit" onclick = "myFunction3()">
										<script>
										function myFunction3() {
				    					alert("Successfully edited");
										}
										</script>						
						      		</div>
									<div class ="col-sm-8">
								    	<div class="form-group">
											<label for="comment">Activity: </label>
											<textarea class="form-control" rows="7" id="comment" name = "activity" value = "${activity }"></textarea>
										</div>
									</div>
						  		</div>
					  		</div>
					  		
					 	 </form>
   			</div>
  		</div>
	</div>

</body>
</html>