<%@include file="header.jsp"%>
<html>
	<body>
		<div class="container">
  <!-- <h2>Product Details</h2>
  <p>Here are the new products available in this site...</p>      -->
  <div class="table-responsive">       
  <table class="table table-hover" width="50%">
    <thead>
      <tr>
        <th>Product Id</th>
        <th>Name</th>
        <th>Manufacturer</th>
        <th>Price</th>
        <th>Details</th>
        <th>Icon</th>
      </tr>
    </thead>
    <tbody>
	      <tr>
        <td>${data.id}</td>
        <td>${data.name}</td>
        <td>${data.manufacturer}</td>
        <td>${data.price}</td>
        <td>${data.desc}</td>
        <td><img src="<c:url value="/resources${data.id}.jpg"/>" height="50px" width="70px"/></td>
      </tr>
      </tbody>
  </table>
  </div>
   <form action="abc">
  	<input type="submit" value="Add to Cart">
  </form>
 
</div>
</body>
</html>