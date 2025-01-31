<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>>
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fill the Product Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
             background-image: linear-gradient(to right, #304352, #d7d2cc); /* Lizard gradient */
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
            text-align: center;
            margin-top: 20px;
        }
        .btn-container a,
        .btn-container button {
            background-color: #4CAF50;
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            margin-right: 10px;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }
        .btn-container a:hover,
        .btn-container button:hover {
            background-color: #45a049;
        }
        .btn-container button {
            background-color: #f44336;
            margin-right: 0; /* Remove margin-right to align buttons properly */
        }
    </style>
</head>
<body>
    <h1 class="text-center-mb-3">Change Product details</h1>
    <form action="${pageContext.request.contextPath }/handle-product" method="post">
        <input type="text" value="${product.id }" name="id"/>
        <div class="form-group">
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="name" required value="${product.name }"><br>
        </div>
        
        <div class="form-group">
            <label for="description">Product Description:</label>
            <textarea id="description" name="description" required>${product.description }</textarea><br>
        </div>
    
        <div class="form-group">
            <label for="price">Product Price:</label>
            <input type="number" id="prices" name="prices" required value="${product.prices }"><br>
        </div>

        <div class="btn-container">  
            <a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a> 
            <button type="submit" class="btn btn-outline-success">Update</button>
        </div>
    </form>
</body>
</html>
