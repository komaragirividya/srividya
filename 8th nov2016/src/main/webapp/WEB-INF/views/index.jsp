<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
                   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

                        <!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

                       <!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

                          <!-- // PAGE BACKGROUND -->

<!-- <body background="resources/images/10.jpg"> -->

                                 <!--   // NAVBAR -->
                                   <!DOCTYPE html>

<style>


  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
/*Add a dark background color with a little bit see-through */ 
.navbar {
    margin-bottom: 3;
    background-color: #2d2d30;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity:0.9;
}

/* Add a gray color to all navbar links */
.navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
}

/* On hover, the links will turn white */
.navbar-nav li a:hover {
    color: #fff !important;
}

/* The active link */
.navbar-nav li.active a {
    color: #fff !important;
    background-color:#29292c !important;
}

/* Remove border color from the collapsible button */
.navbar-default .navbar-toggle {
    border-color: transparent;
}

/* Dropdown */
.open .dropdown-toggle {
    color: #fff ;
    background-color: #555 !important;
}

/* Dropdown links */
.dropdown-menu li a {
    color: #000 !important;
}

/* On hover, the dropdown links will turn red */
.dropdown-menu li a:hover {
    background-color: red !important;
}
/*====================================== LOGIN ==========================================*/
.container      { 
  font-family:'Roboto';
  width:300px; 
  margin:30px auto 0; 
  display:block; 
  background:#FFF;
  padding:10px 50px 50px;
}
/* form starting stylings ------------------------------- */
.group        { 
  position:relative; 
  margin-bottom:45px; 
}
input         {
  font-size:18px;
  padding:10px 10px 10px 5px;
  display:block;
  width:200px;
  border:none;
  border-bottom:1px solid #757575;
}
input:focus     { outline:none; }
/* LABEL ======================================= */
label          {
  color:#999; 
  font-size:18px;
  font-weight:normal;
  position:absolute;
  pointer-events:none;
  left:5px;
  right:5px;
  top:10px;
  transition:0.2s ease all; 
}

/* active state */
input:focus ~ label, input:valid ~ label     {
  top:-20px;
  font-size:14px;
  color:#5264AE;
}
/* BOTTOM BARS ================================= */
.bar  { position:relative; display:block; width:200px; }
.bar:before, .bar:after   {
  content:'';
  height:2px; 
  width:0;
  bottom:1px; 
  position:absolute;
  background:#5264AE; 
  transition:0.2s ease all; 
}
.bar:before {
  left:50%;
}
.bar:after {
  right:50%; 
}

/* active state */
input:focus ~ .bar:before, input:focus ~ .bar:after {
  width:50%;
}
/* active state */
input:focus ~ label, input:valid ~ label {
  top:-20px;
  font-size:14px;
  color:#5264AE;
}

  
  </style>

  <title>Bootstrap Case</title>
  

</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">		

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#">Roadster</a>
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
                   <!--     COUROSEL -->

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active" >
      <img src="resources/images/1.jpg" alt="click here"width="1400px" height= "500px">
      <div class="carousel-caption" role="caption">
      <h1 style="font-family:Brush Script MT;font-size:300%;">Volkswagon Bettle  </h1>
    </div>
    </div>

    <div class="item" >
      <img src="resources/images/4.jpg" alt="click here" width="1400px" height= "500px">
      <div class="carousel-caption" role="caption">
      <h1 style="font-family:Brush Script MT; font-size:300%;">Ameo  </h1>
    </div>
    
    </div>

    <div class="item" >
      <img src="resources/images/3k.jpg" alt="click here"  width="1400px" height= "500px">
       <div class="carousel-caption" role="caption">
      <h1 style="font-family:Brush Script MT; font-size:300%;"></h1>
    </div>
      
    </div>

    <div class="item" >
      <img src="resources/images/2.jpg" alt="click here"width="1400px" height= "500px">
      <div class="carousel-caption" role="caption">
      <h1 style="font-family:Brush Script MT; font-size:300%;">Volkswagen-Touran </h1>
    </div>
    </div>
     <div class="item" >
      <img src="resources/images/5.jpg" alt="click here"  width="1400px" height= "500px">
      <div class="carousel-caption" role="caption">
      <h1 style="font-family:Brush Script MT; font-size:300%;">Nissan Skyline </h1>
    </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</body>
</html>
