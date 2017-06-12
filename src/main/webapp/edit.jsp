<%@ page import="demo.model.Student" %><%--
    Created by mingfei.net@gmail.com
    6/12/17 15:42
    https://github.com/thu/JavaEE_1702/
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>编辑</h1>
<form action="student" method="post">
    <input type="hidden" name="action" value="modify">
    <input type="hidden" name="id" value="<%=((Student)session.getAttribute("student")).getId()%>">
    <input type="text" name="name" placeholder="姓名"
           value="<%=((Student)session.getAttribute("student")).getName()%>"><br>
    <input type="text" name="gender" placeholder="性别"
           value="<%=((Student)session.getAttribute("student")).getGender()%>"><br>
    <input type="date" name="dob" placeholder="出生日期"
           value="<%=((Student)session.getAttribute("student")).getDob()%>"><br>
    <input type="submit" value="保存">
</form>
</body>
</html>
