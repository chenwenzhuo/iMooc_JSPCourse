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

<form method="post" action="checkLogin.jsp">
    <table>
        <tr>
            <td>用户名：</td>
            <td>
                <label>
                    <input type="text" name="username">
                </label>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
