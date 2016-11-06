<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <div class="container-fluid">
<h2><center>CART LIST</center></h2>
<br>
<br>
<br>
<c:if test="${!empty cartList}">
<table class="table table-condensed" align="center">
<tr>
<!-- <th width="80">Cart ID</th> -->
<th width="120" align="center">Product Name</th>
<th width="120" align="center">Price</th>
<th width="60" align="center">Delete</th>
</tr>
<c:forEach items="${cartList}" var="cart">
<tr>

<td align="center">${cart.proName}</td>
<td align="center">${cart.price}</td>

</tr>
</c:forEach>
</table>
<br>
<h2><center> Total: ${sum}</center></h2>
</c:if>
</div>
<br>
<br>
<br>
<br>
<div style="text-align: center;">
<a href="payment"><button type="button" class="btn btn-success">Proceed to Pay</button></a>
</div>​

</body>
</html>