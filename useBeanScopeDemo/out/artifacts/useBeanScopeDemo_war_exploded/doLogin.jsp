<%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/7 0007
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<h1>useBean动作元素的scope属性的四种不同取值</h1>
<hr/>

<h2>scope="application"</h2>
<jsp:useBean id="myUser_application" class="com.po.User" scope="application"/>
<jsp:setProperty name="myUser_application" property="*"/>
用户名：<%=myUser_application.getUsername()%><br/>
密码：<%=myUser_application.getPassword()%><br/><br/><br/>

<h2>scope="session"</h2>
<jsp:useBean id="myUser_session" class="com.po.User" scope="session"/>
<jsp:setProperty name="myUser_session" property="username" value="session"/>
<jsp:setProperty name="myUser_session" property="password"/>
用户名：<%=myUser_session.getUsername()%><br/>
密码：<%=myUser_session.getPassword()%><br/><br/><br/>

<h2>scope="request"</h2>
<jsp:useBean id="myUser_request" class="com.po.User" scope="request"/>
<jsp:setProperty name="myUser_request" property="username" value="request"/>
<jsp:setProperty name="myUser_request" property="password"/>
用户名：<%=myUser_request.getUsername()%><br/>
密码：<%=myUser_request.getPassword()%><br/><br/><br/>

<h2>scope="page"</h2>
<jsp:useBean id="myUser_page" class="com.po.User" scope="page"/>
<jsp:setProperty name="myUser_page" property="username" value="page"/>
<jsp:setProperty name="myUser_page" property="password"/>
用户名：<%=myUser_page.getUsername()%><br/>
密码：<%=myUser_page.getPassword()%><br/><br/><br/>

<!--请求重定向方式跳转，在testScope.jsp中无法获取到myUser_request的属性值-->
<a href="testScope.jsp">跳转到testScope.jsp</a>

<!--使用服务器内部转发方式跳转-->
<%
    request.getRequestDispatcher("testScope.jsp").forward(request, response);
%>
</body>
</html>
