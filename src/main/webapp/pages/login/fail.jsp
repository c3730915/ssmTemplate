<%--
  Created by IntelliJ IDEA.
  User: c3730
  Date: 12/3/2020
  Time: 12:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <c:if test="${empty user}">
        <c:out value="error password"></c:out>
    </c:if>

</head>
<body>

</body>
</html>
