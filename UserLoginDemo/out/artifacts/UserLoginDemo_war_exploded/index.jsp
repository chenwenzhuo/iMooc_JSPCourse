<%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/6 0006
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登陆</title>
</head>
<body>
<h1>请输入用户名和密码以登陆</h1>
<hr/>
<form method="post" action="checkLogin.jsp">
    <table>
        <tr>
            <td>用户名：</td>
            <td>
                <label>
                    <input type="text" name="username">
                </label>
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <label>
                    <input type="password" name="userPwd">
                </label>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
