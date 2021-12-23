<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/8/2021
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Subject Management Application</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">

</head>
<body>

<h1>Customer Management</h1>
<a href="/customers?action=create">Create new customer</a>
<div>
    <h2>List of subject</h2>
    <table class="table table-dark table-striped">
        <tr>
            <th>No</th>
            <th>ID</th>
            <th>Name</th>
            <th>Birth day</th>
            <th>Gender</th>
            <th>Id card</th>
            <th>phone</th>
            <th>Email</th>
            <th>Address</th>
            <th>Type id</th>
            <th>Action</th>
        </tr>

        <c:forEach var="customerObj" items="${listCustomer}" varStatus="loop">
            <tr>
                <td><c:out value="${loop.count}" /></td>
                <td><c:out value="${customerObj.id}"/></td>
                <td><c:out value="${customerObj.name}"/></td>
                <td><c:out value="${customerObj.birthDay}"/></td>
                <td><c:out value="${customerObj.gender}"/></td>
                <td><c:out value="${customerObj.idCard}"/></td>
                <td><c:out value="${customerObj.phone}"/></td>
                <td><c:out value="${customerObj.email}"/></td>
                <td><c:out value="${customerObj.address}"/></td>
                <td><c:out value="${customerObj.typeId}"/></td>
                <td>
                    <a href="/customers?action=update&id=${customerObj.id}">Edit</a>
                    <a href="/customers?action=delete&id=${customerObj.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <form action="/customers">
        <input type="submit" name="find">
        <input type="text" name="name">
        <input type="hidden" name="action" value="search">
    </form>
</div>
<script src="../js/bootstrap.min.js" ></script>
</body>
</html>