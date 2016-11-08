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
h2.bg-success{
    padding: 15px;
}

.required-lbl{
    color: red;
}

label[for="billinginformation"]{
    display: inline;
    float: left;
    margin:0px 45px 0px 0px;
}

.card-expiry{
    padding-left: 0px;
}

.confirm-btn{
    float:right;
}

.bg-primary{
    padding: 10px;
}

label{
    margin-bottom :0px;
}</style>
</head>
<body>
<br>
<br>
<br>
<br>
<body background="resources/images/cart3.jpg">
 <div class="container" style="margin:0px 400px 0px 400px">
 <div class="col-xs-6 col-md-6">
 <div class="panel panel-info">
  <div class="panel-heading">
                    <h3 class="panel-title">
                        Shipping Address
                    </h3>
                </div>
  <div class="panel-body">
	<form:form>
<div class=row>
	<div class="form-group col-md-6"> <!-- Full Name -->
		<label for="full_name_id" class="control-label">Full Name</label>
		<form:input type="text" class="form-control" id="full_name_id" name="full_name" "placeholder="John Deer" required/>
	</div>	
	<div class="form-group col-md-6"> 
		<label for="phone" class="control-label">Phone</label>
		<form:input type="text" class="form-control" id="phone" name="phone" pattern=".{10}" title="id should be between 4 to 7 characters" placeholder="0123456789"/>
	</div>
</div>
<div class=row>
	<div class="form-group col-md-8"> <!-- Street 1 -->
		<label for="street1_id" class="control-label" >Street Address 1</label>
		<form:input type="text" class="form-control" id="street1_id" name="street1" placeholder="Street address, P.O. box, company name, c/o"/>
	</div>					
			</div>
<div class=row>				
	<div class="form-group col-md-8"> <!-- Street 2 -->
		<label for="street2_id" class="control-label">Street Address 2</label>
		<form:input type="text" class="form-control" id="street2_id" name="street2" placeholder="Apartment, suite, unit, building, floor, etc."/>
	</div>	
</div>
<div class=row>	
	<div class="form-group col-md-6"> <!-- City-->
		<label for="city_id" class="control-label">City</label>
		<form:input type="text" class="form-control" id="city_id" name="city" placeholder="Hyderabad"/>
	</div>									
					
	<div class="form-group col-md-6"> <!-- State Button -->
		<label for="state_id" class="control-label">State</label>
		<form:input type="text" class="form-control" id="city_id" name="city" placeholder="Telangana"/>
	</div>
	</div>
<div class=row>	
	<div class="form-group col-md-6"> <!-- Country Button -->
		<label for="state_id" class="control-label">Country</label>
		<form:input type="text" class="form-control" id="city_id" name="city" placeholder="India"/>
	</div>
	<div class="form-group col-md-6"> <!-- Zip Code-->
		<label for="zip_id" class="control-label">Zip Code</label>
		<form:input type="text" class="form-control" id="zip_id" name="zip"  placeholder="#####"/>
	</div>		
	</div>

<a href="payment"><button id="placeorderbtn" name="placeorderbtn" class="btn btn-primary">Proceed to Payment</button></a>
	
</form:form>			
<!--  <a href="payment"><button id="placeorderbtn" name="placeorderbtn" class="btn btn-primary">Proceed to Payment</button></a> -->
</div>
 </div>          
</div>

</body>
</html>