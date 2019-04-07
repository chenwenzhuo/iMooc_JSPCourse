<%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/7 0007
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>系统登录</title>
</head>
<body>
<h1>系统登录</h1>
<hr/>
<form name="loginForm" action="doLogin.jsp?myPwd=abcdefg" method="post">
    <table>
        <tr>
            <td>用户名：</td>
            <td><label>
                <input type="text" name="username"/>
                </label>
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><label>
                <input type="password" name="password"/>
            </label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <label>
                    <input type="submit" value="登录"/>
                </label>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
