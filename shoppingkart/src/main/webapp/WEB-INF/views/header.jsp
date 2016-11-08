<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

                        <!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

                       <!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.navbar {
    margin-bottom: 3;
    background-color: #2d2d30;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity:0.9;
}
.navbar li a, .navbar .navbar-brand 
{
    color: #d5d5d5 !important;
}
</style>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <ul class="nav navbar-nav">
             <li class="active"><a href="onLoad"><span class="glyphicon glyphicon-home"></span></a></li>
	        </ul><a class="navbar-brand" >Road Ster</a>
        </div>
         <ul class="nav navbar-nav">
<c:forEach items="${categoryList}" var="category">
     
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="${category.name}">${category.name}
        <span class="caret"></span></a>
      <ul class="dropdown-menu">
     	 <c:forEach items="${category.products}" var="product">
      		<li><a href="<c:url value='product/get/${product.id}'/>">${product.name}</a></li>
      	</c:forEach>
      </ul>
      </li>
  </c:forEach>
      <li><a href="#">Help Desk</a></li> 
    </ul>
    
    
    <ul class="nav navbar-nav navbar-right">
    
    
    <li class="divider-vertical"></li>
    
    <c:if test="${pageContext.request.userPrincipal.name != null}">
<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
<li><a href="<c:url value="/myCart" />"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a>${cartSize}</li>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
<li><a href="<c:url value="/admin" />">View ALL</a></li>
</c:if>
<li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
<li><a href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
</c:if>


<c:if test="${pageContext.request.userPrincipal.name  == null}">

<li><a href="<c:url value="register" />"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>

<li class="dropdown">
   <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
		<ul id="login-dp" class="dropdown-menu">
			<li>
				<div class="container">
    				<form  action="<c:url value='j_spring_security_check'/>"  method="POST" role="form">
       					<c:if test="${not empty loginerror}">
       							<p class="loginerror" >${loginerror}</p>
       					</c:if>
       
       					<c:if test="${not empty loginmsg}">
       							<p class="loginmsg" >${loginmsg}</p>
       					</c:if>
               
          				<div class="form-group">        
                
         					<input type="text"  placeholder="User name" name="username"/>
         					<span class="highlight"></span> 
         					<span class="bar"></span>
        
         				</div>
         
          				<div class="form-group">        
             
         					<input type="password"  placeholder="Password" name="password"/>
         						<span class="highlight"></span> 
       	 						<span class="bar"></span>
        				</div>
        				
        				<br>
 			 			<button type="submit" class="btn btn-default">Submit</button>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        			</form>
        		</div>
        	</li>
        </ul>
     </li>
   </c:if>
     <li><a href="contact">Contact Us</a></li>
  </ul>
 </div>
</nav>
</body>
</html>