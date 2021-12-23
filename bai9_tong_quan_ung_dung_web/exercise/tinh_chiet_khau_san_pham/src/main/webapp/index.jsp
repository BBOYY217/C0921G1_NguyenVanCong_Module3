<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/24/2021
  Time: 12:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Product Discount Calculator</title>
</head>
<body>
<h1>Product Discount Calculator</h1>
<form method="post" action="/CalculatorServlet">
  <input type="text" name="product_description" placeholder="Enter product description: "><br>
  <input type="text" name="list_price" placeholder="Enter list price: "><br>
  <input type="text" name="discount_percent" placeholder="Enter discount percent (%): "><br>
  <input type="submit" class="submit" value="Calculate Discount">

</form>
</body>
</html>