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
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css">
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" type="text/css">
    <style>
        body {
            background: url(${pageContext.request.contextPath}/images/background1.jpg) no-repeat 100% 100%;
        }

        .form {
            background: rgba(255, 255, 255, 0.2);
            width: 800px;
            text-align: center;
            margin: 120px auto;
        }
        /*阴影*/
        .fa {
            display: inline-block;
            top: 27px;
            left: 6px;
            position: relative;
            color: #ccc;
        }
        input[type="text"], input[type="password"] {
            width: 400px;
            height: 40px;
            border: none;
            border-radius: 5px;
            margin-bottom: 15px;
            padding-left: 20px;
        }
        button{
            width: 120px;
            height: 35px;
            border-radius: 5px;
            border: none;
            margin-top: 10px;
        }
        a{
            text-decoration: none;
            color: #2b542c;
        }
    </style>
    <script>
        function check() {
            var usercode = $("#user_code").val();
            var password = $("#user_password").val();
            if (usercode === "" || password === "") {
                $("#message").text("账号或密码不能为空");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>

<div class="container">
    <form action="${pageContext.request.contextPath}/login" method="post" onsubmit="check()">
        <p><span id="message">${msg}</span></p>
        <div class="form row">
            <div class="form-horizontal col-md-offset-3" id="login_form">
                <h3 class="form-title">登录</h3>
                <div class="col-md-9">
                    <div class="form-group">
                        <i class="fa fa-user fa-lg"></i>
                        <input class="form-control required" type="text" placeholder="教师编号/学号" id="user_code"
                               name="user_code" autofocus="autofocus" maxlength="20"/>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock fa-lg"></i>
                        <input class="form-control required" type="password" placeholder="密码" id="user_password"
                               name="user_password" maxlength="8"/>
                    </div>
                    <div class="form-group">
                        <a href="${pageContext.request.contextPath}/toUpdateUser">修改密码</a>
                    </div>
                    <div class="form-group col-md-offset-9">
                        <button type="submit" class="btn btn-success pull-right" name="submit">登录</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>


</body>
</html>

