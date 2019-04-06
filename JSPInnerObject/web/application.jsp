<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/4 0004
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>application对象</title>
</head>
<body>
<h1>application内置对象</h1>
<hr/>
<%
    application.setAttribute("city", "Beijing");
    application.setAttribute("postcode", "100001");
    application.setAttribute("email", "lisi@126.com");
%>
所在城市：<%=application.getAttribute("city")%><br>
application中的属性有：
<%
    Enumeration attributes = application.getAttributeNames();
    while (attributes.hasMoreElements()) {
        out.println(attributes.nextElement() + "&nbsp;&nbsp;&nbsp;");
    }
%><br>
JSP引擎名及版本号：<%=application.getServerInfo()%><br>
</body>
</html>
