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
    <title>Update employee</title>
</head>
<body>
<p>
    <a href="/employees">Back to employee list</a>
</p>
<form method="post">
    <table>
        <c:if test="${showUpdateEmployee != null}">
            <input type="hidden" name="id" value="<c:out value='${showUpdateEmployee.id}'/>"/>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="<c:out value="${showUpdateEmployee.name}"/>"></td>
            </tr>
            <tr>
                <td>birthDay:</td>
                <td><input type="text" name="birthDay" value="<c:out value="${showUpdateEmployee.birthDay}"/>"></td>
            </tr>
            <tr>
                <td>idCard:</td>
                <td><input type="text" name="idCard" value="<c:out value="${showUpdateEmployee.idCard}"/>"></td>
            </tr>
            <tr>
                <td>salary:</td>
                <td><input type="text" name="salary" value="<c:out value="${showUpdateEmployee.salary}"/>"></td>
            </tr>
            <tr>
                <td>phone:</td>
                <td><input type="text" name="phone" value="<c:out value="${showUpdateEmployee.phone}"/>"></td>
            </tr>
            <tr>
                <td>email:</td>
                <td><input type="text" name="email" value="<c:out value="${showUpdateEmployee.email}"/>"></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><input type="text" name="address" value="<c:out value="${showUpdateEmployee.address}"/>"></td>
            </tr>
            <tr>
                <td>positionId:</td>
                <td><input type="text" name="positionId" value="<c:out value="${showUpdateEmployee.positionId}"/>"></td>
            </tr>
            <tr>
                <td>educationDegreeId:</td>
                <td><input type="text" name="educationDegreeId" value="<c:out value="${showUpdateEmployee.educationDegreeId}"/>"></td>
            </tr>
            <tr>
                <td>divisionId:</td>
                <td><input type="text" name="divisionId" value="<c:out value="${showUpdateEmployee.divisionId}"/>"></td>
            </tr>
            <tr>
                <td><input type="submit" value="save"></td>
            </tr>
        </c:if>
    </table>
</form>
</body>
</html>
