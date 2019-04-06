<%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/6 0006
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<h1>登录成功页面</h1>
<hr/>
欢迎<span style="color:red;font-size: 20px;font-weight: bold"><%=request.getParameter("username")%></span>登录！
</body>
</html>
