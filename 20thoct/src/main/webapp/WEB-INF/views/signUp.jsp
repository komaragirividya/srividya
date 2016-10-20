<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<style>
body{
    background-color: #525252;
}
.centered-form{
	margin-top: 60px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
h2{
color:white
font-family: "Times New Roman", Times, serif;
}
</style>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  </head>
<body>

<body background="resources/images/bc1.jpg">
 <div class="container">

    <div class="signup-form-container">
    
         <!-- form start -->
         <form role="form" id="register-form" autocomplete="off">
         
         <div class="form-header">
         <!-- form header -->       
         </div>
         
         <div class="form-body">
                          
          <!-- form body will be here, input controls -->              
              
         </div>
            
         <div class="form-footer">
            <!-- form footer, let say for submit button -->
         </div>

         </form>
            
    </div>

    </div>


			<form:form role="form" commandName="user" action="register/add" method="POST"> 
			<div class="container">
<div class="container">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form">
			<h2 class="text" color="white">Please Sign Up </h2>
			
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <form:input type="text" path="name" name="name" id="name" class="form-control input-lg" placeholder="Name" tabindex="1"/>
					</div>
				</div>
				
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<form:input type="text" path="phone" name="phone" id="phone" class="form-control input-lg" placeholder="Phone" tabindex="2"/>
					</div>
				</div>
			</div>
			<div class="form-group">
				<form:input type="text" path="address" name="address" id="address" class="form-control input-lg" placeholder="Adress" tabindex="3"/>
			</div>
			<div class="form-group">
				<form:input type="email" path="email" name="email" id="email" class="form-control input-lg" placeholder="Email Address" tabindex="4"/>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<form:input type="password" path="password" name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="5"/>
					</div>
				</div>
				
			</div>
				<input type="submit" value="Register" class="btn btn-info btn-block">
			</form:form>
		</div>
	</div>
</div>
</body>
</html>