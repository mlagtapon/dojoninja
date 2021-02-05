<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ninja</title>

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<style>
	.done {
		margin-left: 9.8%;
	}
	
	h1 {
		margin-left: 2.8%;
		margin-bottom: 20px;
	}
</style>

</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">

  			<div class="collapse navbar-collapse" id="navbarSupportedContent">
    			<ul class="navbar-nav mr-auto">
    				<li class="nav-item">
      					<a class="nav-link" id="homenav" href="/">Home</a>
      				</li>
     				 <li class="nav-item">
        				<a class="nav-link" href="/dojos/new">Add Dojo</a>
      				</li>
     				 <li class="nav-item">
       					 <a class="nav-link" href="/ninjas/new">Add Ninja</a>
      				</li>
    			</ul>
  			</div>
		</nav>
		<h1>New Ninja</h1>
		<div id="main">
		<form:form action="/ninjas" method="post" modelAttribute="ninja">
    		<div class="p-3 form-group row form-inline">
    			<form:label path="dojo" class="col-sm-1 col-form-label"> Dojo:</form:label>
    				<div class="col-sm-4">
		        		<form:errors path="dojo"/>
		        		<form:select path="dojo">
		        			<form:options items="${dojos}" itemValue="id" itemLabel="name"  class="form-control"/>
		        		</form:select>
        			</div>
    		</div>
    		<div class="p-3 form-group row form-inline">
        		<form:label path="firstName" class="col-sm-1 col-form-label">First Name:</form:label>
        			<div class="col-sm-4">
		        		<form:errors path="firstName"/>
		        		<form:input path="firstName" class="form-control"/>
        			</div>
    		</div>
    		<div class="p-3 form-group row form-inline">
        		<form:label path="lastName" class="col-sm-1 col-form-label">Last Name:</form:label>
        			<div class="col-sm-4">
		        		<form:errors path="lastName"/>
		        		<form:input path="lastName" class="form-control"/>
		        	</div>
    		</div>
    		<div class="p-3 form-group row form-inline">
        		<form:label path="age" class="col-sm-1 col-form-label">Age:</form:label>
        			<div class="col-sm-4">
		        		<form:errors path="age"/>
		        		<form:input type="number" path="age" class="form-control"/>
		        	</div>
    		</div>
        	<div class="form-group row form-inline">
    			<div class="done">
    				<input class="btn btn-primary" type="submit" value="Create"/>
    			</div>
    		</div>
		</form:form> 
		</div>
	</div>
</body>
</html>