<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- <li><a href="<c:url value="/login" />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> --%>

                     <%--product list declartion  --%>	
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
							
                            
						</tr>
						<tr>
<%-- 							<td align="left" ><font color="grey">${selectedProduct.id}</font></td> --%>
							<td align="left" ><font color="grey">${selectedProduct.name}</font></td>
							<td align="left" ><font color="grey">${selectedProduct.description}</font></td>
							<td align="left" ><font color="grey">${selectedProduct.price}</font></td>
							<td align="left" ><font color="grey">${selectedProduct.category.name}</font></td>
							<td align="left" ><font color="grey">${selectedProduct.supplier.name}</font></td>
							
							<td align="left" ><a href="<c:url value='cart/add/${selectedProduct.id}' />"><button type="button" class="btn btn-primary">Add to Cart</button></a></td>
							
						</tr>
					</table>
				</c:if>
			</div>
			
</body>
</html>