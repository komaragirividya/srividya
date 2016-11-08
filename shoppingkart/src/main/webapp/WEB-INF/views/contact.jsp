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
<body>
<body background="resources/images/bc.jpg">
<br>
<br>
<br>
<br>
 <div class="container-fluid bg-grey" style="width: 1000px">
  <h2 class="text-center"><font color="white">CONTACT</font></h2>
  <div class="row">
    <div class="col-sm-5">
      <p><font color="white">Contact us and we'll get back to you within 24 hours.</font></p>
      <p><span class="glyphicon glyphicon-phone" style="color:white"></span><font color="white">+91 9440594819</font></p>
      <p><span class="glyphicon glyphicon-envelope" style="color:white"></span> <font color="white">carthub@gmail.com</font></p> 
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div> 
    </div>
  </div>
</div> 
</body>
</html>