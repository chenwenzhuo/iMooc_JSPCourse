<%@ page import="java.net.CookieHandler" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %><%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/9 0009
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HeyThere系统</title>
</head>
<body>
<h1>登录成功</h1>
<hr/>
<br/><br/>

<%
    request.setCharacterEncoding("utf-8");//设置字符集为utf-8
    //判断用户是否选择了记住登录状态
    String[] useCookieOrNot = request.getParameterValues("useCookieOrNot");
    if (null != useCookieOrNot && useCookieOrNot.length > 0) {
        //获取用户在登录页面输入的用户名与密码
        String username = URLEncoder.encode(request.getParameter("username"), StandardCharsets.UTF_8);
        String userPwd = URLEncoder.encode(request.getParameter("userPwd"), StandardCharsets.UTF_8);

        //将用户名与密码保存在Cookie中，并设置最大生存期限为10天
        Cookie userNameCookie = new Cookie("userNameCookie", username);
        userNameCookie.setMaxAge(60 * 60 * 24 * 10);
        Cookie userPwdCookie = new Cookie("userPwdCookie", userPwd);
        userPwdCookie.setMaxAge(60 * 60 * 24 * 10);
        response.addCookie(userNameCookie);
        response.addCookie(userPwdCookie);
    } else {
        //若用户选择不保存，则将已保存的Cookie清空
        Cookie[] cookies = request.getCookies();
        if (null != cookies && cookies.length > 0) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("userNameCookie") ||
                        cookie.getName().equals("userPwdCookie")) {
                    cookie.setMaxAge(0);//设置有效期限为0，使cookie失效
                    response.addCookie(cookie);//重新保存
                }
            }
        }
    }
%>
<a href="userInfo.jsp">查看用户信息</a>
</body>
</html>
