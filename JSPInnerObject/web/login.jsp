<%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/3/28 0028
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆界面</title>
</head>
<body>
<h1>请输入用户名和密码以登陆</h1>
<hr/>
<%--form标签的method属性若设为get，则在doLogin.jsp页面可见明文的用户名和密码，
使用post则不可见--%>
<form action="doLogin.jsp" name="loginForm" method="post">
    <table>
        <tr>
            <td>账号：</td>
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
            <td colspan="2"><input type="submit" value="登录"/></td>
        </tr>
    </table>
</form>
</body>
</html>
