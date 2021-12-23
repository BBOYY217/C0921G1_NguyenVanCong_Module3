<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/8/2021
  Time: 10:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Customer</title>

</head>
<body>
<h1>Create new subject</h1>
<p>
    <a href="/customers">Back to customer list</a>
</p>
<h1>Subject</h1>
<form method="post">
    <table>
        <input type="hidden" value="create">
        <tr>
            <td>name:</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>birthDay:</td>
            <td><input type="text" name="birthDay"></td>
        </tr>
        <tr>
            <td>gender:</td>
            <td><input type="text" name="gender"></td>
        </tr>
        <tr>
            <td>idCard:</td>
            <td><input type="text" name="idCard"></td>
        </tr>
        <tr>
            <td>phone:</td>
            <td><input type="text" name="phone"></td>
        </tr>
        <tr>
            <td>email:</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>address:</td>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>
            <td>typeId:</td>
            <td><input type="text" name="typeId"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="save"></td>
        </tr>
    </table>
</form>
</body>
</html>

