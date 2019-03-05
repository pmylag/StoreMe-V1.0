<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<style>
	.bg-company-blue {
    background-color: #5079D8;
	}
	
	li.borderless { border-top: 0 none;
					border-bottom: 0 none;
					border-left:0 none;
					border-right: 0 none; }
	
</style>
<head>
	<link rel="stylesheet" href="Style/bootstrap-4.0.0-dist/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="Style/styles.css">
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
	<title>View Record</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">StoreMe</a>
			</div>
				
			<ul class="nav navbar-nav">
				<li><a href="HomePage.jsp">Home</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
	      		<li><a href="AccountInfo.jsp"><span class="glyphicon glyphicon-user"></span></a></li>
	      		<li><a href="WelcomePage.jsp"><span class="glyphicon glyphicon-log-in" style="padding-right:5em"></span></a></li>
	    	</ul>
		</div>
	</nav>
	
	<div class="container">
		<div class="panel panel-default">
  			<div class="panel-heading">83-PNB-SS23</div>
  				<div class="panel-body"><p class="text-center">ATM Canopy installation, with light installation.</p></div>
		</div>
		<div class="pull-right">
			<button class="btn btn-primary btn-lg ">
				<a href="#" style="color: white">Done</a>
			</button>
			
		</div>
		
	</div>
</body>
</html>