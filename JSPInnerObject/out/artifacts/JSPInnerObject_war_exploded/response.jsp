<%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/3/28 0028
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*,java.io.*" %>
<%
    response.setContentType("text/html;charset=utf-8");//设置响应的MIME类型

    out.println("<h1>response内置对象</h1>");
    out.println("<hr>");
    //out.flush();

    PrintWriter printWriter = response.getWriter();//获得输出流对象
    printWriter.println("这是response对象生成的输出流printWriter对象！");

    //重定向到register.jsp
    response.sendRedirect("register.jsp");
%>