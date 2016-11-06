<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!--  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html >
<html>
<head>
<!-- <meta name="viewport" http-equiv="Content-Type" content="text/html; charset=ISO-8859-1;width=device-width, initial-scale=1" > -->
<!-- <title>Insert title here</title>   -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.container      { 
  font-family:'Roboto';
  width:600px; 
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
  width:300px;
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
.bar  { position:relative; display:block; width:300px; }
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


</head>
<body>
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
         <label>Username</label>
         </div>
         
          <div class="form-group">        
             
         <input type="password"  placeholder="Password" name="password"/>
         <span class="highlight"></span> 
        <span class="bar"></span>
        <label>password</label>
         </div>
 			 <button type="submit" class="btn btn-default">Submit</button>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        </form>
    
    </div>
    </div>
   </body>
</html>
