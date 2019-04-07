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
<h1>setProperty动作元素的使用</h1>
<hr/>
<!--根据表单自动匹配所有属性-->
<h2>根据表单自动匹配所有属性</h2>
<jsp:useBean id="myUser_matchAllAttr" class="com.po.User"/>
<jsp:setProperty name="myUser_matchAllAttr" property="*"/>
用户名：<%=myUser_matchAllAttr.getUsername()%><br/>
密码：<%=myUser_matchAllAttr.getPassword()%><br/>

<!--根据表单自动匹配部分属性-->
<h2>根据表单自动匹配部分属性</h2>
<jsp:useBean id="myUser_matchPartAttr" class="com.po.User"/>
<jsp:setProperty name="myUser_matchPartAttr" property="username"/>
用户名：<%=myUser_matchPartAttr.getUsername()%><br/>
密码：<%=myUser_matchPartAttr.getPassword()%><br/>

<!--手动为属性赋值-->
<h2>不使用表单，分别为属性赋值</h2>
<jsp:useBean id="myUser_assignSeparately" class="com.po.User"/>
<jsp:setProperty name="myUser_assignSeparately" property="username" value="陈文卓"/>
<jsp:setProperty name="myUser_assignSeparately" property="password" value="888888"/>
用户名：<%=myUser_assignSeparately.getUsername()%><br/>
密码：<%=myUser_assignSeparately.getPassword()%><br/>

<!--URL传参-->
<h2>通过URL传参给属性赋值</h2>
<jsp:useBean id="myUser_URLParam" class="com.po.User"/>
<jsp:setProperty name="myUser_URLParam" property="password" param="myPwd"/>
用户名：<%=myUser_URLParam.getUsername()%><br/>
密码：<%=myUser_URLParam.getPassword()%><br/>
</body>
</html>
