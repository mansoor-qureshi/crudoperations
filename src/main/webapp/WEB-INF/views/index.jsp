<html>
<head>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Include Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
/* Add custom CSS styles here */
</style>

</head>
<body>
<div class="container mt-3">

<div class="row">
  <div class="col-md-12">
  <h1 class="text-center mb-3">Welcome to Product App</h1>
  
  <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col" class="col-1">id</th> <!-- Adjusted width -->
      <th scope="col" class="col-3">Product name</th> <!-- Adjusted width -->
      <th scope="col" class="col-5">Description</th> <!-- Adjusted width -->
      <th scope="col" class="col-2">Price</th> <!-- Adjusted width -->
      <th scope="col" class="col-1">Action</th> <!-- Adjusted width -->
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${products}" var="p">
    <tr>
      <th scope="row">TECHONLY${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description }</td>
      <td class="font-weight-bold">&#x20B9; ${p.prices }</td>
      <td>
      <a href="delete/${p.id}"><i class="fas fa-trash text-danger" style="font-size : 30px;"></i></a>
      <a href="update/${p.id}"><i class="fas fa-pen-nib text-primary" style="font-size : 30px;"></i></a></td>
    </tr>
    </c:forEach>
  </tbody>
</table>
<div class="container text-center">
<a href="${pageContext.request.contextPath}/add-product" class="btn btn-outline-success">Add Product</a>
</div>
  
  </div>

</div>

</div>

</body>

</html>
