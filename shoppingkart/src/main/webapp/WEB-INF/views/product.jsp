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

.panel-table .panel-body{
  padding:0;
}

.panel-table .panel-body .table-bordered{
  border-style: none;
  margin:0;
}

.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type {
    text-align:center;
    width: 100px;
}

.panel-table .panel-body .table-bordered > thead > tr > th:last-of-type,
.panel-table .panel-body .table-bordered > tbody > tr > td:last-of-type {
  border-right: 0px;
}

.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type,
.panel-table .panel-body .table-bordered > tbody > tr > td:first-of-type {
  border-left: 0px;
}

.panel-table .panel-body .table-bordered > tbody > tr:first-of-type > td{
  border-bottom: 0px;
}

.panel-table .panel-body .table-bordered > thead > tr:first-of-type > th{
  border-top: 0px;
}

.panel-table .panel-footer .pagination{
  margin:0; 
}

/*
used to vertically center elements, may need modification if you're not using default sizes.
*/
.panel-table .panel-footer .col{
 line-height: 34px;
 height: 34px;
}

.panel-table .panel-heading .col h3{
 line-height: 30px;
 height: 30px;
}

.panel-table .panel-body .table-bordered > tbody > tr > td{
  line-height: 34px;
}
table, th, td {
    border: 1px solid black;
    align:center;
}


</style>
</head>

<body style="background-color:white;">
<body background="resources/images/table.jpg">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li><a href="admin"><span class="glyphicon glyphicon-home"></span></a></li>
      <div class="navbar-header">
      <a class="navbar-brand" >Kars Hub</a>
    </div>
     <ul class="nav navbar-nav">
            <li><a href="category">Category</a></li>
            <li><a href="supplier">Supplier</a></li>
            <li><a href="product">Product</a></li> 
          </ul>
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
<h2>ADD Product</h2>
<c:url var="addAction" value="/product/add"></c:url>

<form:form action="${addAction}" commandName="product" method="post"> 
<%-- <form:form action="${addAction}" commandName="product" enctype="multipart/form-data" method="post"> --%>

 <table class="table table-bordered table-condensed" align="centre">
    <thead>
	<tr>
		<td><form:label path="id"><spring:message text="ID"/></form:label></td>
		
		<c:choose>
			<c:when test="${!empty product.id }">
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
				<td><form:label path="price" ><spring:message text="price"/></form:label></td>
				<td><form:input path="price" required="true"/></td>
				</tr>
				
				<tr>
				<td><form:label path="description" ><spring:message text="Description"/></form:label></td>
				<td><form:input path="description" required="true"/></td>
				</tr>
				
				<tr>
				<td><form:label path="supplier" ><spring:message text="Supplier"/></form:label></td>
				<td><form:select path="supplier.name" items="${supplierList}" itemValue="name" itemLabel="name"/></td>
				</tr>
				<tr>
				<td><form:label path="category" ><spring:message text="Category"/></form:label></td>
				<td><form:select path="category.name" items="${categoryList}" itemValue="name" itemLabel="name"/></td>
				</tr>
				
<!-- 			 	<tr> -->
<%-- 				<td><form:label path="image"><spring:message text="image"/> --%>
<%-- 				</form:label> --%>
<!-- 				</td> -->
<%-- 				<td><form:input type="file" path="image"/> --%>
<!-- 				</td> -->
<!-- 				</tr>  -->
				
				<tr>
				<td colspan="2"><c:if test="${!empty product.name }">
									<input type="submit" value="<spring:message text="Edit Product"/>"/>
								</c:if>
								<c:if test="${empty product.name }">
									<input type="submit" value="<spring:message text="Add Product"/>"/>
								</c:if>
				</td>
				</tr>
				</thead>
</table>
</form:form>
</div>
	</div>
	</div>
	</div>
<br>
<div class="container">
    <div class="row">
    <h1 class="title" font-color="blue" align="center">Product List</h1>
    
        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    
                  </div>

                </div>
              </div>
<c:if test="${!empty productList}">
		 <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>

				<th  width="125" align="center">Product ID</th>
				<th width="125" align="center">Product Name</th>
				<th width="190" align="center">Product price</th>
				<th width="190" align="center">Product Description</th>
				<th width="190" align="center">Product Category</th>
				<th width="190" align="center">Product Supplier</th>
<!-- 				<th width="190" align="center">Product image</th> -->
				<th width="100" align="center">Edit</th>
				<th width="100" align="center">Delete</th>
			</tr>
					<c:forEach items="${productList}" var="product">
				<tr>
					<td align="center">${product.id}</td>
					<td align="center">${product.name}</td>
					<td align="center">${product.price}</td>
					<td align="center">${product.description}</td>
					<td align="center">${product.category.name}</td>
					<td align="center">${product.supplier.name}</td>
<%-- 					<td align="center"><img src="<c:url value="/resources/images/${product.id}.jpg" />"></td> --%>
					<td align="center"><a href="<c:url value='product/edit/${product.id}' />"><button type="button" class="btn btn-info">Edit</button></a></td>
					<td align="center"><a href="<c:url value='product/remove/${product.id}' />"><button type="button" class="btn btn-info">Delete</button></a></td>
				</tr>
				</thead>
			</c:forEach>
		</table>
	</c:if>
	</div>



</body>
</html>