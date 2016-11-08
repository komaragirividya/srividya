<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="header.jsp" />
    <%@page isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body background="resources/images/cart3.jpg">
 <br>
<br><br>
<br>

    <div class="container" style="margin:0px 400px 0px 400px">
    <c:if test="${!empty selectedProduct.name}">
	    <div class="row">
			<div class="col-md-6 col-sm-6 col-xs-8">
			    <div class="thumbnail">
			    <h1 class="text-center">${selectedProduct.name}</h1>
			    <h4 class="text-center">   Rs.${selectedProduct.price}</h4>
                                               
                    <img src="<c:url value="/resources/images/${selectedProduct.id}.jpg"/>">
                    <div class="caption">
                        <p>${selectedProduct.description}</p>
                        
                    </div>
               <a href="<c:url value='cart/add/${selectedProduct.id}' />"><button type="button" class="btn btn-primary">Add to Cart</button></a>
			 <a href="payment"><button type="button" class="btn btn-warning btn-sm pull-right">BuyNow</button></a>
			</div>
			
			</div>
		</div>
		</c:if>
	</div> 
	
	
</body>
</html>
