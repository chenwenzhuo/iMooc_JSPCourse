<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %><%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/9 0009
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<h1>HeyThere登录</h1>
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
<form name="userLoginForm" action="doLogin.jsp" method="post">
    <table>
        <tr>
            <td>
                用户名：
            </td>
            <td>
                <label>
                    <input type="text" name="username" value="<%=username%>"/>
                </label>
            </td>
        </tr>
        <tr>
            <td>
                密码：
            </td>
            <td>
                <label>
                    <input type="password" name="userPwd" value="<%=userPwd%>"/>
                </label>
            </td>
        </tr>
        <tr>
            <td>
                <label>
                    <input type="checkbox" name="useCookieOrNot" checked="checked"/>十天内免登录
                </label>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" name="submitLoginInfo" value="登录"/>
            </td>
            <td>
                <input type="reset" name="resetLoginInfo" value="取消"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
