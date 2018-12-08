<%--
  Created by IntelliJ IDEA.
  User: H
  Date: 2018/11/26
  Time: 0:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
    <script>
        function check() {
            var usercode=$("#user_code").val();
            var password=$("#user_password").val();
            if (usercode===""||password===""){
                $("#message").text("账号或密码不能为空");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
Login
<p><span id="message">${msg}</span> </p>
<form action="${pageContext.request.contextPath}/login" method="post" onsubmit="check()">
    账号:<input id="user_code" name="user_code" type="text"><br/>
    密码：<input id="user_password" name="user_password" type="text"><br/>
    <input type="submit" value="登录">
</form>
<a href="${pageContext.request.contextPath}/toUpdateUser">haha</a>

</body>
</html>

