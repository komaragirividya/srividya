<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<title>Category Page</title>
<style>
body{ 

background-size:     cover;                      
    background-repeat:   no-repeat;
 } 
 th{
    color:black;
    background-color: snow white;
    align:center;
    text:Arial Black;
}

table, th, td, tr{
    border: 2px solid black;
    align:center;
}
.btn {
    background-color:white ;
    }
h2{
color:#cc0052;
font-family: "Brush Script MT";
}

h3{
color:#cc0052;
font-family: "Times New Roman", Times, serif;
}

<title>Category Page</title>
<style>
body{ 
background-image: url(resources/images/k5.jpg); 
background-size:     cover;                      
    background-repeat:   no-repeat;
 } 
 th{
    color:solid black;
    background-color:white;
    align:center;
}

table, th, td {
    border: 1px solid black;
    align:center;
}
.btn {
    background-color:#cc0052 ;
    }
h2{
color:#cc0052;
font-family: "Times New Roman", Times, serif;
}

h3{
color:#cc0052;
font-family: "Times New Roman", Times, serif;
}


</style>
</head>
<body background="resources/images/ll.jpg" >
<body style="background-color:white;">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >kars</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="admin"><span class="glyphicon glyphicon-home"></span></a></li>
     
     </ul>
     <ul class="nav navbar-nav navbar-right">
      
      <li class="divider-vertical"></li>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			
			
			
			
			<li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
			<li><a href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
		</c:if>
		
		
								
      
      
  </div>
</nav>

<div class="container-fluid">
<div class="col-md-4">
  <div class="row-fluid">
   <div class="span12">
   

<h2><center>ADD CATEGORY</center></h2>
<c:url var="addAction"  value="/category/add"></c:url>

<form:form action="${addAction }" commandName="category">
<table class="table table-condensed">
	<tr>
		<td><form:label path="id"><spring:message text="ID"/></form:label></td>
		
		
		<c:choose>
			<c:when test="${!empty category.id }">
				<td><form:input path="id" disabled="true" readonly="true"/></td>
			</c:when>
			<c:otherwise>
				<td><form:input path="id"  pattern=".{4,7}" required="true" title="id should be between 4 to 7 characters"/></td>
				</c:otherwise>
				</c:choose>
				</tr>
				
				<tr> 
				<form:input path="id" hidden="true"/>
				
				<td><form:label path="name"> <spring:message text="NAME"/></form:label></td>
				<td><form:input path="name" required="true" /></td>
				</tr>
				
				<tr>
				<td><form:label path="description" ><spring:message text="DESCRIPTION"/></form:label></td>
				<td><form:input path="description" required="true"/></td>
				</tr>
				
				<tr>
				<td colspan="2"><c:if test="${!empty category.name }">
									<input type="submit" value="<spring:message text="Edit Category"/>"/>
								</c:if>
								<c:if test="${empty category.name }">
									<input type="submit" value="<spring:message text="Add Category"/>"/>
								</c:if>
				</td>
				</tr>
</table>
</form:form>
</div>
	</div>
	</div>
	</div>
<br>
<div class="container">

<h3><center>CATEGORY LIST</center></h3>
<c:if test="${!empty categoryList }">
	<table  class="table table-condensed" align="center">
			<tr>
				<th  width="125" align="center">Category ID</th>
				<th width="125" align="center">Category Name</th>
				<th width="190" align="center">Category Description</th>
				<th width="100" align="center">Edit</th>
				<th width="100" align="center">Delete</th>
			</tr>
					<c:forEach items="${categoryList}" var="category">
				<tr>
					<td align="center">${category.id}</td>
					<td align="center">${category.name}</td>
					<td align="center">${category.description}</td>
					<td align="center"><a href="<c:url value='category/edit/${category.id}' />"><span class="glyphicon glyphicon-pencil"></span></p></a></td>
					<td align="center"><a href="<c:url value='category/remove/${category.id}' />"><button type="button" class="btn btn-info">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>

</body>
</html>