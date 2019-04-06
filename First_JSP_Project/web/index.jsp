<%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/3/27 0027
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!--HTML Comment-->
<%--JSP Comment--%>
<head>
    <title>My first JSP project</title>
</head>
<body>
<h1>Welcome to my homepage!</h1>
<%!
    String str = "This is a string.";//声明字符串

    int addInts(int x, int y) {
        return x + y;
    }
%>
<%
    out.println("Learning JavaEE!");
%>
<br>
Hello.<%=str%><br>
5 + 6 = <%=addInts(5,6)%><br>
</body>
</html>
