<%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/7 0007
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>useBean</title>
</head>
<body>
<h1>使用userBean动作元素创建JavaBean实例</h1>
<hr/>
<jsp:useBean id="userByUseBean" class="com.po.User"/>
<jsp:setProperty name="userByUseBean" property="username" value="chenwenzhuo"/>
<jsp:setProperty name="userByUseBean" property="password" value="654321"/>
用户名是：<jsp:getProperty name="userByUseBean" property="username"/><br/>
密码是：<jsp:getProperty name="userByUseBean" property="password"/><br/>
</body>
</html>
