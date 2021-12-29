<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/27/2021
  Time: 11:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/Products">Back to product list</a>
</p>
<table border="1px" style="border-collapse: collapse">
    <tr>
        <td>Id: </td>
        <td>${products.getId()}</td>
    </tr>
    <tr>
        <td>Name: </td>
        <td>${products.getName()}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${products.getPrice()}</td>
    </tr>
    <tr>
        <td>Describe: </td>
        <td>${products.getDescribe()}</td>
    </tr>
    <tr>
        <td>Producer: </td>
        <td>${products.getProducer()}</td>
    </tr>
</table>
</body>
</html>