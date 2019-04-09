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
    <style type="text/css">
        p {
            display: inline-block;
            font-family: "宋体", serif;
            color: white;
            font-size: 40px;
        }
    </style>
</head>
<body>
<div id="headOfPage" style="background-color:#00bfff;margin-bottom: 10px">
    <p>HeyThere Login<br/>
        <span style="font-size: 28px">Log in to system</span>
    </p>
</div>
欢迎<span style="color:red;font-size: 20px;font-weight: bold">
    <%=request.getParameter("username")%>
    </span>登录！
</body>
</html>
