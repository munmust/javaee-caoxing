<%--
  Created by IntelliJ IDEA.
  User: H
  Date: 2018/12/8
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/updateUser" method="post">
    <span>${error}</span>
    账号<input type="text" name="user_code" id="user_code"><br/>
    密码<input type="text" name="user_password" id="user_password"><br/>
    新密码<input type="text" name="user_new_password" id="user_new_password">
    <input type="submit" value="提交">
</form>
</body>
</html>
