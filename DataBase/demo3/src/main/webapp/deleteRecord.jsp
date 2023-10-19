<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 10/7/2023
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="dbConnection.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String id = request.getParameter("id");
%>

<c:set var="id" value="<%=id%>"/>
<sql:update dataSource="${db}" var="count">
    DELETE FROM STUDENTS WHERE ID = ?
    <sql:param value="${id}"/>
</sql:update>

<a href="./index.jsp">Home</a>

</body>
</html>
