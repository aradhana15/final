<%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Musichub.com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 50%;
      margin: auto;
  }
  </style>
</head>
<body>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 100% ;height: 50%;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="<c:url value='/resources/images/guitar.jpg'/>" alt="Chania" style=width:60% style=height:40%/>
        <div class="carousel-caption">
        <h3>Chania</h3>
        <p>This is Electric Guitar</p>
      </div>
      </div>

      <div class="item">
        <img src="<c:url value='/resources/images/drum.jpg'/>" alt="Chania" style=width:30% style=height:40%/>
        <div class="carousel-caption">
        <h3>Chania</h3>
        <p>Tabla</p>
      </div>
      </div>
    
      <div class="item">
        <img src="<c:url value='/resources/images/mobile_cover.jpg'/>" alt="Mobile Cover" style=width:30% style=height:40%/>
        
      <div class="carousel-caption">
        <h3>Mobile cover</h3>
        <!-- <p>Flute</p> -->
      </div>
      </div>

      <div class="item">
        <img src="<c:url value='/resources/images/instru1.jpg'/>" alt="" style=width:30% style=height:30%/>
      
      <div class="carousel-caption">
        <h3>Violen</h3>
        <!-- <p>DvD</p> -->
      </div></div>
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
  
  
</div>

</body>
</html>