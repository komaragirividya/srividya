<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>

<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
form { margin: 20px 10px; }

h2 {
  margin-top: 2px;
  margin-bottom: 2px;
}

.container { max-width: 360px; }

.divider {
  text-align: center;
  margin-top: 20px;
  margin-bottom: 5px;
}

.divider hr {
  margin: 7px 0px;
  width: 35%;
}

.left { float: left; }

.right { float: right; }

</style>
  </head>
<body>

<body background="resources/images/bc4.jpg">
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
		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
					<form method="POST" action="#" role="form">
						<div class="form-group">
							<h2>Create account</h2>
						</div>
						<div class="form-group">
							<label class="control-label" for="name">Your name</label>
							 <form:input type="text" path="name" name="name" id="name" class="form-control"/>
						</div>
<!-- 						<div class="form-group"> -->
<!-- 							<label class="control-label" for="username">UserName</label> -->
<%-- 							<form:input id="username" path="username" type="text" maxlength="25" class="form-control"/> --%>
<!-- 						</div> -->
						<div class="form-group">
							<label class="control-label" for="phone">phone</label>
							<form:input type="text" path="phone" name="phone" id="phone" class="form-control"/>
						</div>
						<div class="form-group">
							<label class="control-label" for="email">Email</label>
							<form:input type="text" path="email" name="email" id="email" class="form-control"/>
						</div>
						<div class="form-group">
							<label class="control-label" for="Password">Password</label>
							<form:input id="Password" path="password" name="password" type="password" maxlength="25" class="form-control" placeholder="at least 6 characters" length="40"/>
						</div>
						<div class="form-group">
							<button id="signupSubmit" type="submit" class="btn btn-info btn-block">Create your account</button>
						</div>
						<p></p>Already have an account? <a href="login">Sign in</a></p>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>