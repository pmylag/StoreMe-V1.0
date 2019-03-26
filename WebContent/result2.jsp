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
   			<script>
				document.getElementById("Usersss").value = request.getAttribute("date");
			</script>
			<script type="text/javascript">
			function checkForm(form)
			{
				re = /^[a-zA-Z ]*$/;
				if (!re.test(form.received_by.value)){
					alert("No Numbers or Special Characters allowed for Receiver");
					form.received_by.focus();
					return false;
				}
				
				if(form.datere.value > form.date_shipped.value){
					alert("Date must be later or equal");
					form.date_shipped.focus();
					return false;
				}
				
				else
					alert("Form is successfully edited");
				
				return true;
			}
			
			</script>
   				<form action = "EditAtmInfoServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);">
					<div class="panel-body bg-default">
						<div class="form-group">
							<div class="col-sm-4">
			  					<div>
							    	<div class="form-group">
							      		<label for="sel1">Choose Section: </label>
									<% if ((String)request.getAttribute("atmplacement") != null){ %>
										<% String place = (String)request.getAttribute("atmplacement"); %>
									<%} else {%>
										<% String place = " "; %>
									<% } %>
						     	 		<select class="form-control" id="sel1" name = "atmplacement" required>
						     	 			<%if (place.equals("A")) {%>
							     	 		<option selected value="A" name = "atmplacement">A</option>
								     		<option value="B" name = "atmplacement">B</option>
									     	<option value="C" name = "atmplacement">C</option>
									     	<option value="D" name = "atmplacement">D</option>
									     	<option value="E" name = "atmplacement">E</option>
									     	<option value="F" name = "atmplacement">F</option>
									     	<option value="G" name = "atmplacement">G</option>
									     	<option value="H" name = "atmplacement">H</option>
									     	<option value="I" name = "atmplacement">I</option>
									     	<option value="J" name = "atmplacement">J</option>
									     	<%} else if (place.equals("B")) {%>
									     	<option value="A" name = "atmplacement">A</option>
								     		<option selected value="B" name = "atmplacement">B</option>
									     	<option value="C" name = "atmplacement">C</option>
									     	<option value="D" name = "atmplacement">D</option>
									     	<option value="E" name = "atmplacement">E</option>
									     	<option value="F" name = "atmplacement">F</option>
									     	<option value="G" name = "atmplacement">G</option>
									     	<option value="H" name = "atmplacement">H</option>
									     	<option value="I" name = "atmplacement">I</option>
									     	<option value="J" name = "atmplacement">J</option>
									     	<%} else if (place.equals("C")) {%>
									     	<option value="A" name = "atmplacement">A</option>
								     		<option value="B" name = "atmplacement">B</option>
									     	<option selected value="C" name = "atmplacement">C</option>
									     	<option value="D" name = "atmplacement">D</option>
									     	<option value="E" name = "atmplacement">E</option>
									     	<option value="F" name = "atmplacement">F</option>
									     	<option value="G" name = "atmplacement">G</option>
									     	<option value="H" name = "atmplacement">H</option>
									     	<option value="I" name = "atmplacement">I</option>
									     	<option value="J" name = "atmplacement">J</option>
									     	<%} else if (place.equals("D")) {%>
									     	<option value="A" name = "atmplacement">A</option>
								     		<option value="B" name = "atmplacement">B</option>
									     	<option value="C" name = "atmplacement">C</option>
									     	<option selected value="D" name = "atmplacement">D</option>
									     	<option value="E" name = "atmplacement">E</option>
									     	<option value="F" name = "atmplacement">F</option>
									     	<option value="G" name = "atmplacement">G</option>
									     	<option value="H" name = "atmplacement">H</option>
									     	<option value="I" name = "atmplacement">I</option>
									     	<option value="J" name = "atmplacement">J</option>
									     	<%} else if (place.equals("E")) {%>
									     	<option value="A" name = "atmplacement">A</option>
								     		<option value="B" name = "atmplacement">B</option>
									     	<option value="C" name = "atmplacement">C</option>
									     	<option value="D" name = "atmplacement">D</option>
									     	<option selected value="E" name = "atmplacement">E</option>
									     	<option value="F" name = "atmplacement">F</option>
									     	<option value="G" name = "atmplacement">G</option>
									     	<option value="H" name = "atmplacement">H</option>
									     	<option value="I" name = "atmplacement">I</option>
									     	<option value="J" name = "atmplacement">J</option>
									     	<%} else if (place.equals("F")) {%>
									     	<option value="A" name = "atmplacement">A</option>
								     		<option value="B" name = "atmplacement">B</option>
									     	<option value="C" name = "atmplacement">C</option>
									     	<option value="D" name = "atmplacement">D</option>
									     	<option value="E" name = "atmplacement">E</option>
									     	<option selected value="F" name = "atmplacement">F</option>
									     	<option value="G" name = "atmplacement">G</option>
									     	<option value="H" name = "atmplacement">H</option>
									     	<option value="I" name = "atmplacement">I</option>
									     	<option value="J" name = "atmplacement">J</option>
									     	<%} else if (place.equals("H")) {%>
									     	<option value="A" name = "atmplacement">A</option>
								     		<option value="B" name = "atmplacement">B</option>
									     	<option value="C" name = "atmplacement">C</option>
									     	<option value="D" name = "atmplacement">D</option>
									     	<option value="E" name = "atmplacement">E</option>
									     	<option value="F" name = "atmplacement">F</option>
									     	<option value="G" name = "atmplacement">G</option>
									     	<option selected value="H" name = "atmplacement">H</option>
									     	<option value="I" name = "atmplacement">I</option>
									     	<option value="J" name = "atmplacement">J</option>
									     	<%} else if (place.equals("I")) {%>
									     	<option value="A" name = "atmplacement">A</option>
								     		<option value="B" name = "atmplacement">B</option>
									     	<option value="C" name = "atmplacement">C</option>
									     	<option value="D" name = "atmplacement">D</option>
									     	<option value="E" name = "atmplacement">E</option>
									     	<option value="F" name = "atmplacement">F</option>
									     	<option value="G" name = "atmplacement">G</option>
									     	<option value="H" name = "atmplacement">H</option>
									     	<option selected value="I" name = "atmplacement">I</option>
									     	<option value="J" name = "atmplacement">J</option>
									     	<%} else if (place.equals("J")) {%>
									     	<option value="A" name = "atmplacement">A</option>
								     		<option value="B" name = "atmplacement">B</option>
									     	<option value="C" name = "atmplacement">C</option>
									     	<option value="D" name = "atmplacement">D</option>
									     	<option value="E" name = "atmplacement">E</option>
									     	<option value="F" name = "atmplacement">F</option>
									     	<option value="G" name = "atmplacement">G</option>
									     	<option value="H" name = "atmplacement">H</option>
									     	<option value="I" name = "atmplacement">I</option>
									     	<option selected value="J" name = "atmplacement">J</option>
									     	<%} else{ %>
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
									     	<%} %>
									     </select>
									</div>
								</div>
								<div class="input-group date" style = "padding-top: 1em" data-provide="datepicker">
						   			<label for="uses">Date Shipped: </label>
						    		<input type="date" class="form-control" id="Usersss" name = "date_shipped" min="2019-01-01" max="9999-12-12" value = "${date } " >
						    	</div>
						    		<div class="input-group time" style = "padding-top: 1em">
							   			<label for="uses1">Time Shipped: </label>
							    		<input type="time" class="form-control" id="Uses1" name = "time" min="08:00:00" max="19:00:00" value = "${time }">
							    	</div>
							    		
									<div class="form-group">
									<% String status = (String)request.getAttribute("status"); %>
									
										<label for="sel1">Status:</label>
											<select class="form-control" id="sel1" name = "status" value = "${atm.status}" required>
											<%if (status.equals("Completed")) {%>
												<option selected value="Completed">Completed</option>
												<option value="On Hold">On Hold</option>
												<option value="Waiting">Waiting</option>
												<option value="Scheduled">Schedule</option>
											<%} else if (status.equals("On Hold")) {%>
												<option value="Completed">Completed</option>
												<option selected value="On Hold">On Hold</option>
												<option value="Waiting">Waiting</option>
												<option value="Scheduled">Schedule</option>
											<%} else if (status.equals("Waiting")) {%>
												<option  value="Completed">Completed</option>
												<option value="On Hold">On Hold</option>
												<option selected value="Waiting">Waiting</option>
												<option value="Scheduled">Schedule</option>
											<%} else if (status.equals("E")) {%>
												<option value="Completed">Completed</option>
												<option value="On Hold">On Hold</option>
												<option value="Waiting">Waiting</option>
												<option selected value="Scheduled">Schedule</option>
											<% } else { %>
												<option value="Completed">Completed</option>
												<option value="On Hold">On Hold</option>
												<option value="Waiting">Waiting</option>
												<option value="Scheduled">Schedule</option>
											<% } %>
											</select>
									</div>
									<div class="form-group">
								  		<label for="usr">Received by: </label>
								  		<input type="text" class="form-control" id="usr" name = "received_by" value = "${received }">
									</div>
									<div class="form-group">
								  		<label for="usr">ID: </label>
									  	<input type="text" class="form-control" id="usr" name = "id" value = ${id } readonly>
									</div>
									<a href = "GetAllAtmInfoServlet" role="button" class="btn btn-info">Cancel</a>							
									<input type="submit" class="btn btn-lg btn-info" value="Submit" onclick = "myFunction3()">					
							</div>
							<div class ="col-sm-8">
					    		<div class="form-group">
									<label for="comment">Activity: </label>
										<textarea class="form-control" rows="7" id="comment" name = "activity"></textarea>
									<input type="text" class="form-control" name = "datere" value = "${datere } " style="visibility: hidden" >
									<input type="text" class="form-control" name = "timere" value = "${datere } " style="visibility: hidden" >
									
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
