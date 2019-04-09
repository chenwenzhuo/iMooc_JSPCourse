<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %><%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/9 0009
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
<h1>用户信息</h1>
<hr/>
<%
    String username = "";
    String userPwd = "";

    Cookie[] cookies = request.getCookies();
    if (null != cookies && cookies.length > 0) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("userNameCookie")) {
                username = URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8);
            }
            if (cookie.getName().equals("userPwdCookie")) {
                userPwd = URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8);
            }
        }
    }
%>
用户名：<%=username%><br/>
密码：<%=userPwd%><br/>
</body>
</html>
