<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8"%>
<html>
<head>
<%--  此页面用于测试cookie存储  --%>
    <title>SSM template</title>
    <script src="js/js.cookie.js" type="module"></script>
    <script src="js/jquery-3.5.1.js"></script>
</head>
<body>
<h1>
    Cookies
</h1>
<input type="text" style="width: 30%" placeholder="请输入你想要查找的id" id="findId"><br>
<input type="button" id="bt1" style="margin-top: 30px;width: 30px;height: 30px">
<script>
    $(function () {
    })
    $("#bt1").click(function () {
        Cookies.set("page",$("#findId").val());
        location.href="${pageContext.request.contextPath}/word/findByid?id="+$("#findId").val();
    })
</script>

</body>
</html>
