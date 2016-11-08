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
<style>

</style>
</head>
<body>
 <br>
<br><br>
<br>

    <div class="container">
    <c:if test="${!empty selectedProduct.name}">
	    <div class="row">
			<div class="col-md-9 col-sm-9 col-xs-12">

			    <div class="thumbnail">
			    <h1>${selectedProduct.name}</h1>
                    <img src="<c:url value="/resources/images/${selectedProduct.id}.jpg"/>">
                    <div class="caption">
                        <p>${selectedProduct.description}</p>
                        
                    </div>
               <a href="<c:url value='cart/add/${selectedProduct.id}' />"><button type="button" class="btn btn-primary">Add to Cart</button></a>
			</div>
			</div>
		</div>
		</c:if>
	</div> 
	
	
</body>
</html>
