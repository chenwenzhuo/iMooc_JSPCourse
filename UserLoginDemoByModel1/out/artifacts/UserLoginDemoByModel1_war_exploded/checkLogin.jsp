<%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/4/6 0006
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="loginUser" class="com.po.User"/>
<jsp:useBean id="userDAO" class="com.dao.UserDAO"/>
<jsp:setProperty name="loginUser" property="*"/>

<%
    if (userDAO.userLogin(loginUser)) {
        request.getRequestDispatcher("login_success.jsp").forward(request, response);
    } else {
        response.sendRedirect("login_fail.jsp");
    }
%>