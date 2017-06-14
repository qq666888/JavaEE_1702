<%@ page import="demo.servlet.IpAction" %><%--
    Created by mingfei.net@gmail.com
    6/14/17 16:25
    https://github.com/thu/JavaEE_1702/
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body onload="ip()">
<form id="form" action="ip" method="post">
    <input type="text" name="ip">
    <input type="submit" value="查询">
</form>
${sessionScope.geo}
<%
    if (session.getAttribute("geo") == null) {
        String ip = request.getRemoteAddr();
        out.print(ip + "<br>");
        out.print(IpAction.getGeo(ip));
    }
%>
</body>
</html>
