<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/10/2021
  Time: 12:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee Management Application</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">

</head>
<body>

<h1>Employee Management</h1>
<a href="/employees?action=create">Create new employee</a>
<div>
    <h2>List of subject</h2>
    <table class="table table-dark table-striped">
        <tr>
            <th>No</th>
            <th>Name</th>
            <th>Birth day</th>
            <th>Id card</th>
            <th>Salary</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Address</th>
            <th>Position id</th>
            <th>Education degree id</th>
            <th>Division id</th>
            <th>Action</th>
        </tr>

        <c:forEach var="employeeObj" items="${listEmployee}" varStatus="loop">
            <tr>
                <td><c:out value="${loop.count}"/></td>
                <td><c:out value="${employeeObj.name}"/></td>
                <td><c:out value="${employeeObj.birthDay}"/></td>
                <td><c:out value="${employeeObj.idCard}"/></td>
                <td><c:out value="${employeeObj.salary}"/></td>
                <td><c:out value="${employeeObj.phone}"/></td>
                <td><c:out value="${employeeObj.email}"/></td>
                <td><c:out value="${employeeObj.address}"/></td>
                <td><c:out value="${employeeObj.positionId}"/></td>
                <td><c:out value="${employeeObj.educationDegreeId}"/></td>
                <td><c:out value="${employeeObj.divisionId}"/></td>
                <td>
                    <a href="/employees?action=update&id=${employeeObj.id}">Edit</a>
                        <%--                    <a href="/employees?action=delete&id=${employeeObj.id}">Delete</a>--%>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
                            onclick="del('${employeeObj.id}','${employeeObj.name}')">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
    <!-- Button trigger modal -->


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form action="/employees?action=delete&id" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Delete</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        do you want to delete <span id="employeeName"></span>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">delete</button>
                        <input type="hidden" id="employeeId" name="sendEmployeeId">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="../js/bootstrap.min.js"></script>
<script>
    function del(id,name) {
        console.log("hello" + id + " ?" + name )
        document.getElementById("employeeName").innerText = name;
        document.getElementById("employeeId").value = id ;
    }
</script>
</body>
</html>