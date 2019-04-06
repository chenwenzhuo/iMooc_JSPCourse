<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/3/28 0028
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session Page Two</title>
</head>
<body>
<h1>session内置对象</h1>
<hr/>
<%--session的getCreationTime()方法返回一个long类型的数据（毫秒）--%>
<%--使用SimpleDateFormat和Date对时间进行格式化输出--%>
<%
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
    Date date = new Date(session.getCreationTime());
%>
session创建时间：<%=sdf.format(date)%><br>
JSP为session指定的ID号：<%=session.getId()%><br>
用户名：<%=session.getAttribute("username")%><br>

</body>
</html>
