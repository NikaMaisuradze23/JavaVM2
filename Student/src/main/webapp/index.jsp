<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>

<style>
    table, th, td {
        border: 1px solid black;
    }

</style>
<body>

<table>
    <thead>
    <tr>
        <th>name</th>
        <th>last name</th>
        <th>age</th>
    </tr>
    </thead>
    <tbody>
    <% for (int i = 0; i < StudentUtils.getInstance().getStudentList().size(); i++) { %>
    <tr>
        <td><%=StudentUtils.getInstance().getStudentList().get(i).getName()%>
        </td>
        <td><%=StudentUtils.getInstance().getStudentList().get(i).getLastName()%>
        </td>
        <td><%=StudentUtils.getInstance().getStudentList().get(i).getAge()%>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>

<form action="data.jsp" method="post">
    <label>First name</label> <input type="text" name="firstName"><br>
    <label>Last name</label><input type="text" name="lastName"><br>
    <label>Age</label><input type="text" name="age"><br>
    <input type="submit" value="submit">
</form>

</body>
</html>