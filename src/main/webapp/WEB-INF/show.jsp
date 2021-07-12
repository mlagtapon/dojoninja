<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<style>
	h1 {
		margin: 40%;
	}
</style>
<meta charset="ISO-8859-1">
<title>Dojo and Ninjas</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
		<h1><c:out value="${aDojo.name}"></c:out>'s Ninjas:</h1>
		<div id="dl">
			<table class="table table-hover w-75 p-3 mx-auto">
    			<thead>
        			<tr>
            			<th>First Name</th>
            			<th>Last Name</th>
            			<th>Age</th>
        			</tr>
    			</thead>
    			<tbody>
    				<c:forEach items="${aDojo.ninjas}" var="ninja">
    					<tr>
							<td><c:out value="${ninja.firstName}"/></td>
							<td><c:out value="${ninja.lastName}"/></td>
							<td><c:out value="${ninja.age}"/></td>
						</tr>
					</c:forEach>
    			</tbody>
			</table>
		</div>
	</div>
</body>
</html>