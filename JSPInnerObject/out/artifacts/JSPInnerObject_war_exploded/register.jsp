<%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/3/28 0028
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<h1>填写信息以完成注册</h1>
<hr/>
<form action="request.jsp" name="regForm" method="post">
    <table>
        <tr>
            <td>用户名：</td>
            <td><label>
                <input type="text" name="username"/>
            </label></td>
        </tr>
        <tr>
            <td>爱好：</td>
            <td><label>
                <input type="checkbox" name="hobby" value="reading"/>读书
                <input type="checkbox" name="hobby" value="basketball"/>篮球
                <input type="checkbox" name="hobby" value="videoGames"/>游戏
                <input type="checkbox" name="hobby" value="music"/>音乐
                <input type="checkbox" name="hobby" value="movies"/>电影
            </label></td>
        </tr>
        <tr>
            <td colspan="2"><label>
                <input type="submit" value="提交"/>
            </label></td>
        </tr>
    </table>
    <br/>
    <br/>
    <%--URL传参方式，使用中文会出现乱码，
    解决方式为修改Tomcat服务器的server.xml文件--%>
    <a href="request.jsp?username=李四&hobby=music,movie">李四通过URL传参方式注册</a>
</form>
</body>
</html>
