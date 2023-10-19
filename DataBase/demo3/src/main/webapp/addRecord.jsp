<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 10/7/2023
  Time: 09:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<style>

    form {
        width: 320px;
        margin: 20px auto;
    }

    label {
        display: block;
        margin-bottom: 10px;
    }

    input[type="text"] {
        width: 100%;
        padding: 5px;
        margin-bottom: 5px;
    }

    input[type="submit"] {
        background-color: green;
        color: white;
        padding: 8px 12px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

</style>

<body>

<form action="./checkData.jsp" method="post" target="_self">

    <label for="first_name">First name</label>
    <input type="text" name="first_name" id="first_name">

    <label for="last_name">First name</label>
    <input type="text" name="last_name" id="last_name">

    <input type="submit" value="Submit">

</form>

</body>
</html>
