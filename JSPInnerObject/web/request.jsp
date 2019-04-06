<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/3/28 0028
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册后页面</title>
</head>
<body>
<h1>用户提交的信息</h1>
<hr/>
<%
    /*解决中文乱码问题
    * 但无法解决URL传参中的中文乱码*/
    request.setCharacterEncoding("utf-8");

    //测试setAttribute(String,Object)方法
    request.setAttribute("password", "123456");
%>
用户名：<%=request.getParameter("username")%><br/>
密码：<%=request.getAttribute("password")%><br/>
爱好：<%
    String[] hobbies = request.getParameterValues("hobby");
    for (String hobby : hobbies) {
        out.println(hobby + "&nbsp&nbsp&nbsp");
    }
%><br/><br/>
请求体的MIME类型：<%=request.getContentType()%><br/>
请求使用的协议：<%=request.getProtocol()%><br/>
服务器主机名：<%=request.getServerName()%><br/>
服务器端口号：<%=request.getServerPort()%><br/>
请求体的长度：<%=request.getContentLength()%><br/>
请求客户端IP地址：<%=request.getRemoteAddr()%><br/>
请求真实路径：<%=request.getRealPath("request.jsp")%><br/>
请求上下文路径：<%=request.getContextPath()%><br/>
</body>
</html>
