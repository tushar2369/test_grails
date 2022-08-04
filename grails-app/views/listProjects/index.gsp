<%--
  Created by IntelliJ IDEA.
  User: 46933
  Date: 04-08-2022
  Time: 10:06
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Due date</th>
        <th>Description</th>
    </tr>
    <g:each in="${allprojects}" status="i" var="thisProject">
    <tr>
        <td>${thisProject.name}</td>
        <td>${thisProject.dueDate}</td>
        <td>${thisProject.description}</td>
    </tr>
    </g:each>
</table>
</body>
</html>