<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="header.jsp" />
    <%@page isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.container{ 
max-width: 900px; }
.panel{ 
background:sky blue;}

.divider {
  text-align: center;
  margin-top: 20px;
  margin-bottom: 5px;
}

.divider hr {
  margin: 7px 0px;
  width: 35%;
}
.vertical-divider {
   margin-left: 20px;
  margin-right: 20px;
  height: 50px;
  border: 0;
  border-left: 1px solid #cccccc;
  display: inline-block;
  vertical-align: bottom;
}

.left { float: left; }

.right { float: right; }

</style>
<body>
<body background="resources/images/cart3.jpg">




<div class="container-fluid" style="width: 1000px">
 <h3 style="color:white";><span class="glyphicon glyphicon-shopping-cart"></span>My Cart
 <a href="onLoad"><button type="button" class="btn btn-primary btn-sm pull-right"><span class="glyphicon glyphicon-share-alt"></span> Continue Shopping</button></a></h3>
 <br><br><br>
    
	    <div class="row">
		    <div class="col-md-12">
			    <div class="row">
			        <c:if test="${!empty cartList}">
				        <div class="col-md-8">
                            <c:forEach items="${cartList}" var="cart">
					            <div class="panel panel-primary">
                                    <div class="panel-body">
                                        <div class="row">
                                        <div class="col-md-5 col-xs-12">
                                              <div class="col-xl-2">
                                              <img src="<c:url value="/resources/images/${cart.proId}.jpg"/>"/>
                                              </div>
                                          </div>
                                            <div class="col-md-4 col-xs-12">
                                              <h4><strong>${cart.proName}</strong></h4>
                                              <p>Quantity:${cart.quantity}</p>
                                            </div>
                                            <div class="col-md-3 col-xs-12">
                                                <div class="col-md-3 text-right">
                                                  <h5>Rs.${cart.price}</h5>
                                                </div>
                                            </div>
                                        </div>
                                     <hr>
                                        
                                          <a href="<c:url value='cart/delete/${cart.id}' />">
                                           <button type="button" class="btn-link btn-sm pull right"><span class="glyphicon glyphicon-remove"></span> Remove</button></a>
                                        
                                    </div> 
                                </div>
                            </c:forEach>
				        </div>
<!-- 				         <div class="vertical-divider"></div> -->
				        <div class="col-md-4">
					        <div class="panel panel-default">
                                  <div class="panel-heading"><h4>Price details</h4></div>
                                <div class="panel-body">
                                    <div class="row">
                                        <c:if test="${!empty cartList}">
                                            <table class="table" align="center">
															  <thead>
															  <tr>
															  <th align="center">Product Name</th>
															  <th align="center">Price</th>
															  </tr>
															  </thead>
												<c:forEach items="${cartList}" var="cart">
																  <tbody>
																 <tr>
																 <td align="center">${cart.proName}</td>
																 <td align="center">${cart.price}</td>
																 </tr>
																 </tbody>
												</c:forEach>
											</table>
											<br>
                                            <h2><center> Total: ${sum}</center></h2>
                                        </c:if>
                                         <a href="checkout"><button id="singlebutton" name="singlebutton" class="btn btn-success center-block" style="width:250px">Place Order</button></a>
                                         
                                    </div>        
                                </div> 
				            </div>
						</div> 
				    </c:if>
		        </div>
	        </div>
        </div>
	
</div>
</body>
</html>