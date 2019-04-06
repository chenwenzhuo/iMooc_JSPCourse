<%--
  Created by IntelliJ IDEA.
  User: Chenwz
  Date: 2019/3/27 0027
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>九九乘法表</title>
  </head>
  <body>
  <h1>九九乘法表</h1>
  <hr>
  <%!
    private String printMultiTable() {
      StringBuilder strBuilder = new StringBuilder();
      String spaces = "&nbsp&nbsp&nbsp&nbsp&nbsp";
      for (int i = 1; i < 10; i++) {
        for (int j = 1; j <= i; j++) {
          String part = j + "×" + i + "=" + (i * j);
          strBuilder.append(part);

          strBuilder.append(spaces);
          if (2 == j) {
            if (3 == i || 4 == i) {
              strBuilder.append("&nbsp&nbsp");
            }
          }
        }
        strBuilder.append("<br>");
      }
      return strBuilder.toString();
    }
  %>
  <%=printMultiTable()%>
  </body>
</html>
