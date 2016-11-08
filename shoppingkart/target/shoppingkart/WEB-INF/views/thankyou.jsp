    <jsp:include page="header.jsp" />
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

</style>
</head>
<body>
<br>
<br>
<br>
<br>
    <div class="container">
	    <div class="row">
		    <div class="col-md-3 col-sm-3 col-xs-12">
			    <p claa="lead">category</p>
				<div class="list-group">
			        <a href="#" class="list-group-item">1</a>
					<a href="#" class="list-group-item">1</a>
					<a href="#" class="list-group-item">1</a>
					<a href="#" class="list-group-item">1</a>
			    </div>
			</div>
		<c:forEach items="${cartList}" var="cart">
			<div class="col-md-9 col-sm-9 col-xs-12">
			    <div class="thumbnail">
                    <img src="<c:url value="/resources/images/${cart.proId}.jpg"/>"/>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>...</p>
                        
                    </div>
                </div>
			</div>
		</c:forEach>
		</div>
	</div>
	<br><br><br>
			<div>
				<c:if test="${!empty selectedProduct.name}">
					<table align="center">
						<tr>
                      <!-- <th align="center" width="125" ><font color="grey">Product ID</font></th> -->
							<th align="center" width="175"><font color="grey">Product Name</font></th>
							<th align="center" width="190"><font color="grey">Product Description</font></th>
							<th align="center" width="90"><font color="grey">Price</font></th>
							<th align="center" width="150"><font color="grey">Product Category</font></th>
							<th align="center" width="150"><font color="grey">Product Supplier</font></th>
							<th align="center" width="150"><font color="grey">Product image</font></th>
                            
						</tr>
						<tr>
<%-- 							<td align="left" ><font color="grey">${selectedProduct.id}</font></td> --%>
							<td align="left" ><font color="grey">${selectedProduct.name}</font></td>
							<td align="left" ><font color="grey">${selectedProduct.description}</font></td>
							<td align="left" ><font color="grey">${selectedProduct.price}</font></td>
							<td align="left" ><font color="grey">${selectedProduct.category.name}</font></td>
							<td align="left" ><font color="grey">${selectedProduct.supplier.name}</font></td>
							<td align="left" ><img src="<c:url value="/resources/images/${selectedProduct.id}.jpg"/>"></td>
							<td align="left" ><a href="<c:url value='cart/add/${selectedProduct.id}' />"><button type="button" class="btn btn-primary">Add to Cart</button></a></td>
							
						</tr>
					</table>
				</c:if>
			</div>
</body>
</html>