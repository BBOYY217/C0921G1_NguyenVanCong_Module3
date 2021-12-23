<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/9/2021
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Customer</title>
</head>
<body>
<p>
    <a href="/customers">Back to customer list</a>
</p>
<h1>Subject</h1>
<form method="post">
    <table>
        <c:if test="${showUpdateCustomer != null}">
            <input type="hidden" name="id" value="<c:out value='${showUpdateCustomer.id}'/>"/>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="<c:out value="${showUpdateCustomer.name}"/>"></td>
            </tr>
            <tr>
                <td>birthDay:</td>
                <td><input type="text" name="birthDay" value="<c:out value="${showUpdateCustomer.birthDay}"/>"></td>
            </tr>
            <tr>
                <td>gender:</td>
                <td><input type="text" name="gender" value="<c:out value="${showUpdateCustomer.gender}"/>"></td>
            </tr>
            <tr>
                <td>idCard:</td>
                <td><input type="text" name="idCard" value="<c:out value="${showUpdateCustomer.idCard}"/>"></td>
            </tr>
            <tr>
                <td>phone:</td>
                <td><input type="text" name="phone" value="<c:out value="${showUpdateCustomer.phone}"/>"></td>
            </tr>
            <tr>
                <td>email:</td>
                <td><input type="text" name="email" value="<c:out value="${showUpdateCustomer.email}"/>"></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><input type="text" name="address" value="<c:out value="${showUpdateCustomer.address}"/>"></td>
            </tr>
            <tr>
                <td>TypeId:</td>
                <td><input type="text" name="typeId" value="<c:out value="${showUpdateCustomer.typeId}"/>"></td>
            </tr>
            <tr>
                <td><input type="submit" value="save"></td>
            </tr>
        </c:if>
    </table>
</form>
</body>
</html>