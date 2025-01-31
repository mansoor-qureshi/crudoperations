<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>>
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
    }
    h1 {
        text-align: center;
    }
    form {
        max-width: 500px;
        margin: 0 auto;
    }
    label {
        display: block;
        margin-bottom: 5px;
    }
    input[type="text"],
    textarea,
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    textarea {
        height: 150px;
    }
    .btn-container {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .btn-container a,
    .btn-container button {
        flex: 1;
        padding: 15px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 10px;
        text-align: center;
        transition: background-color 0.3s ease;
    }
    .btn-container a {
        background-color: #f44336;
        color: white;
        margin-right: 10px;
        text-decoration: none;
    }
    .btn-container button {
        background-color: #4CAF50;
        color: white;
    }
    .btn-container a:hover {
        background-color: #e53935;
    }
    .btn-container button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<h1 class="text-center-mb-3">Fill the Product Details</h1>
<form action="handle-product" method="post">
    <div class="form-group">
        <label for="productName">Product Name:</label>
        <input type="text" id="productName" name="name" required><br>
    </div>
        
    <div class="form-group">
        <label for="description">Product Description:</label>
        <textarea id="description" name="description" required></textarea><br>
    </div>
    
    <div class="form-group">
        <label for="price">Product Price:</label>
        <input type="number" id="prices" name="prices" required><br>
    </div>

    <div class="btn-container">  
        <a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a> 
        <button type="submit" class="btn btn-outline-success">Add</button>
    </div>
</form>
</body>
</html>
