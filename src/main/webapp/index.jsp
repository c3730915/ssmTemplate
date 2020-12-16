<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>SSM template</title>
</head>
<body>
<h1>
    添加用户信息表单
</h1>
<form name="accountFor" action="${pageContext.request.contextPath}/account/save" method="post">
    <label>Username</label>
    <input type="text" name="name"><br>
    <label>AccountMoney</label>
    <input type="text" name="money"><br><br>
    <input type="submit" value="Save"><br>
</form>


</body>
</html>
