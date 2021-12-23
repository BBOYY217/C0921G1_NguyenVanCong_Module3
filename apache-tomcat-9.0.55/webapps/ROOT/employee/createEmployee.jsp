<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/10/2021
  Time: 12:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Employee</title>
    <style>
        small{
            color : red;
        }

    </style>
</head>
<body>
    <a href="/employees">Back to employee list</a>
    <div>
        <c:if test="${message != null}">
            <p class="text-success">${message}</p>
        </c:if>
    </div>
<form method="post">
    <table>
        <input type="hidden" value="create">
        <tr>
            <td>name:</td>
            <td><input type="text" name="name" value="${e.name}"><small>${errList.get(0)}</small></td>
        </tr>
        <tr>
            <td>birthDay:</td>
            <td><input type="date" name="birthDay" value="${e.birthDay}"></td>
        </tr>
        <tr>
            <td>idCard:</td>
            <td><input type="text" name="idCard" value="${e.idCard}"><small>${errList.get(1)}</small></td>
        </tr>
        <tr>
            <td>salary:</td>
            <td><input type="text" name="salary" value="${e.salary}"></td>
        </tr>
        <tr>
            <td>phone:</td>
            <td><input type="text" name="phone" value="${e.phone}"><small>${errList.get(2)}</small></td>
        </tr>
        <tr>
            <td>email:</td>
            <td><input type="text" name="email" value="${e.email}"><small>${errList.get(3)}</small></td>
        </tr>
        <tr>
            <td>address:</td>
            <td><input type="text" name="address" value="${e.address}"><small>${errList.get(4)}</small></td>
        </tr>
        <tr>
            <td>positionId:</td>
            <td><input type="text" name="positionId" value="${e.positionId}"></td>
        </tr>
        <tr>
            <td>educationDegreeId:</td>
            <td><input type="text" name="educationDegreeId" value="${e.educationDegreeId}"></td>
        </tr>
        <tr>
            <td>divisionId:</td>
            <td><input type="text" name="divisionId" value="${e.divisionId}"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="save"></td>
        </tr>
    </table>
</form>
</body>
</html>
