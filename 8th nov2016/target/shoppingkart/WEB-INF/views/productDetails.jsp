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

    <div class="container">
	    <div class="row">
	    <c:forEach items="${categoryList}" var="category">
		    <div class="col-md-3 col-sm-3 col-xs-12">
			    <a href="${category.name}"><p class="lead">${category.name}</p></a>
				<div class="list-group">
				<c:forEach items="${category.products}" var="product">
			        <a href="#" href="<c:url value='product/get/${product.id}'/>" class="list-group-item">${product.name}</a>
					
			    </c:forEach>
			    </div>
			    
			</div>
			<div class="col-md-9 col-sm-9 col-xs-12">
			    <div class="thumbnail">
                    <img src="..." alt="...">
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>...</p>
                        
                    </div>
                </div>
			</div>
			</c:forEach>
		</div>
	</div>
	
</body>
</html>