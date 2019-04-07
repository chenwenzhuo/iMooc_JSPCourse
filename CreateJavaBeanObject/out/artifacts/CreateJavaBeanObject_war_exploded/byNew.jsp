<%@ page import="com.po.User" %><%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/7 0007
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>new</title>
</head>
<body>
<h1>使用new关键字创建JavaBean实例</h1>
<hr/>
<%
    User userByNew = new User();
    userByNew.setUsername("HeyThere");
    userByNew.setPassword("123456");
%>
用户名是：<%=userByNew.getUsername()%><br/>
密码是：<%=userByNew.getPassword()%><br/>
</body>
</html>
