<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

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
        				<a class="nav-link" href="/dojos/new">Create A Dojo</a>
      				</li>
     				 <li class="nav-item">
       					 <a class="nav-link" href="/ninjas/new">Add A Ninja</a>
      				</li>
    			</ul>
  			</div>
		</nav>
		<div id="main">
			<table class="table table-hover w-75 p-3 mx-auto">
    			<thead>
        			<tr>
            			<th>Dojo</th>
            			<th>Name</th>
            			<th>Age</th>
        			</tr>
    			</thead>
    			<tbody>
        			<c:forEach items="${dojos}" var="onedojo">
        				
							<c:forEach items="${onedojo.ninjas}" var="oneninja">
								<tr>
									<td><a href="/dojos/${onedojo.id}">${onedojo.name}</a></td>
									<td>${oneninja.firstName} ${oneninja.lastName}</td>
									<td>${oneninja.age}</td>
								</tr>
							</c:forEach>
						
					</c:forEach>

    			</tbody>
			</table>
		</div>
	</div>
</body>
</html>