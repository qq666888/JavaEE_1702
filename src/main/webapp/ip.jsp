<%--
    Created by mingfei.net@gmail.com
    6/14/17 16:25
    https://github.com/thu/JavaEE_1702/
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="ip" method="post">
    <input type="text" name="ip">
    <input type="submit" value="查询">
</form>
${sessionScope.geo}
</body>
</html>
