<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
<body>
<!--                              // PAGE BACKGROUND -->

<!-- <body background="resources/images/10.jpg"> -->

      
      
                                 <!--   // NAVBAR -->
<!DOCTYPE html>
<html lang="en">
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
  

 
  
  </style>
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<nav class="navbar navbar-default navbar-fixed-top">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Cars Hub</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Brand</a></li> 
      <li><a href="#">Contact Us</a></li> 
     <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
            <span class="caret"></span>
          </a>
          <ul class="dropdown-menu">
            <li><a href="#">Accesories</a></li>
            <li><a href="#">Tyres</a></li>
            <li><a href="#">Servicing</a></li> 
          </ul>
        </li>
      
    </ul>

    <ul class="nav navbar-nav navbar-right">
    <li><a href="admin"><span class="glyphicon glyphicon-user"></span>Admin</a></li>
    <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>











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
