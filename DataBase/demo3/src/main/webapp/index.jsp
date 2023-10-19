<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="dbConnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>

<style>

    table {
        width: 100%;
    }

    td, th {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid royalblue;
    }

    th {
        background-color: lightskyblue;
    }

</style>

<body>

<sql:query var="rs" dataSource="${db}">
    SELECT * FROM STUDENTS;
</sql:query>

<a href="./addRecord.jsp">Add student</a>

<table>

    <tr>
        <th>ID</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Action</th>
        <th>Action</th>
    </tr>

    <c:forEach items="${rs.rows}" var="student">

        <tr>

            <th>${student.ID}</th>
            <th>${student.FIRST_NAME}</th>
            <th>${student.LAST_NAME}</th>
            <th><a href="./updateRecord.jsp?id=${student.ID}">Update</a></th>
            <th><a href="./deleteRecord.jsp?id=${student.ID}">Delete</a></th>

        </tr>

    </c:forEach>

</table>

</body>
</html>