<%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/6 0006
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContext对象</title>
</head>
<body>
<h1>pageContext内置对象</h1>
<hr>
用户名是：<%=pageContext.getSession().getAttribute("username")%>
<%
    pageContext.forward("register.jsp");
%>
</body>
</html>
