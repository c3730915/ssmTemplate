<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: c3730
  Date: 2020-12-16
  Time: 3:07 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>

</head>
<body>
table border="1">
<tr>
    <th>账户id</th>
    <th>账户名称</th>
    <th>账户金额</th>
</tr>

<c:forEach items="${accountList}" var="account">
    <tr>
        <td>${account.id}</td>
        <td>${account.name}</td>
        <td>${account.money}</td>
    </tr>
</c:forEach>

</table>
</body>
</html>
