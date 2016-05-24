<html>
  <head>
  <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<%@taglib prefix="spr" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
  </head>
<body>
   <div class="table-responsive">       
  <table class="table table-hover" width="50%">
    <thead>
      <tr>
      <th>Icon</th>
      <th>Id</th>
         <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Sub Total</th>
        
      </tr>
          <tr>
           <td><img src="<c:url value='${data.image}'/>" height="50px" width="70px"/></td>
        <td>${data.id}</td>
        <td>${data.name}</td>
        <%-- <td>${data.manufacturer}</td> --%>
        <td>${data.price}</td>
        <td>
        <form>
          <input type="text" name="qty">
        </form>
        </td>
       
      </tr>
    
     <!--   -------------------------------
       <tr>
      <th>Icon</th>
         <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Total</th> -->
    </thead>
    </table>
</div>
  <form action="cartdetailsconfirmed">
  <input type="submit" value="Confirm"/>
  </form>
</body>


</html>