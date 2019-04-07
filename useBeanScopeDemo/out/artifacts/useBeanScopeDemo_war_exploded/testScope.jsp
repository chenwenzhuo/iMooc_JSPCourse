<%@ page import="com.po.User" %><%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/7 0007
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试Scope</title>
</head>
<body>
<h1>useBean动作元素的scope属性的四种不同取值</h1>
<hr/>
<h2>application</h2>
<hr/>
<jsp:useBean id="myUser_application" class="com.po.User" scope="application"/>
用户名：<%=myUser_application.getUsername()%><br/>
密码：<%=myUser_application.getPassword()%><br/>

<h3>使用application内置对象获取JavaBean实例</h3>
用户名：<%=((User)application.getAttribute("myUser_application")).getUsername()%><br/>
密码：<%=((User)application.getAttribute("myUser_application")).getPassword()%><br/>

<h2>session</h2>
<hr/>
<jsp:useBean id="myUser_session" class="com.po.User" scope="session"/>
用户名：<%=myUser_session.getUsername()%><br/>
密码：<%=myUser_session.getPassword()%><br/>

<h3>使用session内置对象获取JavaBean实例</h3>
用户名：<%=((User)session.getAttribute("myUser_session")).getUsername()%><br/>
密码：<%=((User)session.getAttribute("myUser_session")).getPassword()%><br/>

<h2>request</h2>
<hr/>
<jsp:useBean id="myUser_request" class="com.po.User" scope="request"/>
用户名：<%=myUser_request.getUsername()%><br/>
密码：<%=myUser_request.getPassword()%><br/>

<h3>使用request内置对象获取JavaBean实例</h3>
用户名：<%=((User)request.getAttribute("myUser_request")).getUsername()%><br/>
密码：<%=((User)request.getAttribute("myUser_request")).getPassword()%><br/>

<h2>page</h2>
<hr/>
<jsp:useBean id="myUser_page" class="com.po.User" scope="page"/>
用户名：<%=myUser_page.getUsername()%><br/>
密码：<%=myUser_page.getPassword()%><br/>

</body>
</html>
