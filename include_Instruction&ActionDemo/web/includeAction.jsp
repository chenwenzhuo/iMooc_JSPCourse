<%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/10 0010
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>include动作</title>
</head>
<body>
<h1>使用include动作包含另一个JSP页面</h1>
<hr/>

<h4>以下日期定义在date.jsp中，被include动作包含到此页面。</h4>
<jsp:include page="date.jsp"/>
</body>
</html>
