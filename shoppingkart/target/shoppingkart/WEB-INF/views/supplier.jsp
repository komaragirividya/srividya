<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
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
background-image: url(resources/images/k5.jpg); 
background-size:     cover;                      
    background-repeat:   no-repeat;
 } 
 th{
    color:white;
    background-color: #cc0052  ;
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
color:solid black;
font-family: "Times New Roman", Times, serif;
}

h3{
color:solid black;
font-family: "Times New Roman", Times, serif;
}


</style>
</head>
<body style="background-color:white;">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >He@rtyK@rt</a>
    </div>
</div>
</nav>
<div class="container-fluid">
<div class="col-md-4">
  <div class="row-fluid">
   <div class="span12">
<h2><center>ADD Supplier</center></h2>
<c:url var="addAction"  value="/supplier/add"></c:url>

<form:form action="${addAction }" commandName="supplier">
<table class="table table-condensed">
	<tr>
		<td><form:label path="id"><spring:message text="ID"/></form:label></td>
		
		
		<c:choose>
			<c:when test="${!empty supplier.id }">
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
				<td><form:label path="address" ><spring:message text="address"/></form:label></td>
				<td><form:input path="address" required="true"/></td>
				</tr>
				
				<tr>
				<td><form:label path="phone" ><spring:message text="Phone"/></form:label></td>
				<td><form:input path="phone" required="true"/></td>
				</tr>
				
				<tr>
				<td colspan="2"><c:if test="${!empty supplier.name }">
									<input type="submit" value="<spring:message text="Edit Supplier"/>"/>
								</c:if>
								<c:if test="${empty supplier.name }">
									<input type="submit" value="<spring:message text="Add Supplier"/>"/>
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

<h3><center>Supplier LIST</center></h3>
<c:if test="${!empty supplierList }">
	<table  class="table table-condensed" align="center">
			<tr>
				<th  width="125" align="center">Supplier ID</th>
				<th width="125" align="center">Supplier Name</th>
				<th width="190" align="center">Supplier address</th>
				<th width="190" align="center">Supplier Phone</th>
				<th width="100" align="center">Edit</th>
				<th width="100" align="center">Delete</th>
			</tr>
					<c:forEach items="${supplierList}" var="supplier">
				<tr>
					<td align="center">${supplier.id}</td>
					<td align="center">${supplier.name}</td>
					<td align="center">${supplier.address}</td>
					<td align="center">${supplier.phone}</td>
					<td align="center"><a href="<c:url value='supplier/edit/${supplier.id}' />"><button type="button" class="btn btn-info">Edit</button></a></td>
					<td align="center"><a href="<c:url value='supplier/remove/${supplier.id}' />"><button type="button" class="btn btn-info">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>



</body>
</html>