<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: H
  Date: 2018/12/19
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/css/metisMenu.min.css" rel="stylesheet" />
    <!-- DataTables CSS -->
    <link href="${pageContext.request.contextPath}/css/dataTables.bootstrap.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/sb-admin-2.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/boot-crm.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <style>

        body {
            font: 12px/1.5 MIcrosoft YaHei, Arial, Helvetica, sans-serif;
            color: #333;
        }
        .c-header {
            border-bottom: 1px solid #e4e4e5;
            background: #fff;
            width: 100%;
            z-index: 1;
        }
        .headerwrap {
            width: 1100px;
            margin: 0px auto;
            position: relative;

            z-index: 1;
            color: #fff;
            overflow: hidden;
        }
        .c-menu {
            float: right;
            margin-top: 5px;
            color: #fff;
        }
        .navhide {
            font-size: 18px;
            color: #333;
            float: left;
            cursor: pointer;
            display: none;
        }
        .navhide span {
            width: 27px;
            height: 27px;
            display: inline-block;
            float: left;
            margin-right: 6px;
            cursor: pointer;
        }
        .navshow {
            display: block;
        }
        .navshow {
            float: left;
        }
        .navshow ul {
            float: left;
            margin-right: 10px;
        }
        ul, ol, dl {
            list-style: none;
        }
        ul, menu, dir {
            display: block;
            list-style-type: disc;

        }
        .c-menu li {
            float: left;
            margin-left: 10px;
            position: relative;
        }
        .c-menu li a.current {
            background: #999;
            color: #fff;
        }
        .c-menu li a {
            font-size: 18px;
            color: #333;
            padding: 2px 8px;
            border-radius: 3px;
        }
        a {
            color: #202020;
            text-decoration: none;
        }
        .c-header h1 {
            font-size: 24px;
            color: #333;
            font-weight: normal;
        }
        .c-header h1 span.articleschool {
            font-size: 14px;
            color: #fff;
            text-decoration: underline;
        }



        .ZyTop {
            margin-top: 30px;
            padding: 20px 20px;
        }
        .ZyTop p {
            line-height: 22px;
            margin-top: 10px;
            color: #989898;
        }
        b, em, i, u, strong {
            font-weight: normal;
            font-style: normal;
            text-decoration: none;
        }
        .Zy_TItle {
            padding: 10px 0;
            border-top: solid 1px #CCC;
        }
        .Zy_ulTop {
            padding: 0 10px;
            padding-bottom: 10px;
        }
        ul, ol, dl {
            list-style: none;
        }
        .Zy_ulTop li {
            line-height: 28px;
            margin-top: 10px;
        }
        .Zy_ulTop li i {
            display: inline-block;
            width: 45px;
            text-align: center;
            color: #ccc;
            font-size: 14px;
        }
        .Zy_ulTop li a {
            color: #555;
            text-decoration: none;
            width: calc(100% - 45px);
        }
        .Cy_TItle1 h2 {
            font: bold 16px/40px "Microsoft YaHei";
            color: #202020;
            margin-top: 20px;
        }
        .Zy_TItle {
            padding: 10px 0;
            border-top: solid 1px #CCC;
        }
        .Zy_TItle i {
            width: 55px;
            font-size: 24px;
            color: #000000;
            text-align: center;
        }
        .Py_answer {
            padding: 20px 15px;
            font-size: 14px;
            color: #000;
        }
        .font14 {
            font-size: 14px;
        }
        .fb {
            font-weight: bold;
        }
        .tijiao{
            width: 800px;
            padding: 30px;
        }
        .tijiao button{
            height: 40px;
            width: 120px;
            border-radius: 5px;
            background: #2aabd2;
            margin: 30px auto;
        }
    </style>
</head>
<body>
<div class="c-header">
    <div class="headerwrap">
        <div class="c-menu">
            <div class="navhide"><span></span>功能导航</div>
            <div class="navshow">
                <ul>
                    <li><a href="#" class="current">首页</a><label id="mytaskcount"></label></li>
                    <li><a href="#">任务</a></li>
                    <li><a href="#">统计</a></li>
                    <li><a href="#">资料</a><i class="cdataTip" style="display: inline-block;"></i></li>
                    <li><a href="#">通知</a></li>
                    <li><a href="#">作业 </a><i class="workTip"></i></li>
                    <li><a href="#">考试 </a><i class="testTip"> </i></li>
                    <li><a href="#">讨论</a></li>
                </ul>
            </div>
        </div>
        <h1>
	<span title="${NowHomeWork.homework_name}">
	<a href="#">
        ${NowHomeWork.homework_name}
    </a></span>
        </h1>
    </div>
</div>
<div class="ZyTop" style="position:relative;border:none;padding:0px;">
    <p clsdd="fl" style="font-size:14px;">
        <img src="#" width="24" height="24" class="headimages fl">&nbsp;&nbsp;
        <span>姓名：<i style="color:#333;">${User.user_name}</i></span>&nbsp;&nbsp;
        <span><c:choose>
            <c:when test="${User.user_type eq 2}">老师</c:when>
            <c:otherwise>班级：${User.user_cls}</c:otherwise>
        </c:choose></span>
    </p>
</div>
<div class="Cy_TItle1">
    <h2>一.选择题<em style="font-size:12px;font-style:normal;"></em></h2>
</div>
<c:forEach items="${Choice}" var="item">
    <div class="TiMu" style="position:relative">
        <div class="Zy_TItle  clearfix">
            <p onclick="deleteTopic(${item.topic_id})" style="cursor: pointer";>删除</p>
            <div class="clearfix" style="line-height: 35px; font-size: 14px;width:870px;">
                <div style="width:80%;float:left;">${item.topic_des}（　&nbsp;）</div>
                    <%--<div style="width:20%;height:100%;float:right;">--%>

                    <%--</div>--%>
            </div>
        </div>
        <ul class="Zy_ulTop">
            <li class="clearfix"><i class="fl">A、</i><a href="#" class="fl" style="word-break: break-all;">${item.topic_A}</a></li>
            <li class="clearfix"><i class="fl">B、</i><a href="#" class="fl" style="word-break: break-all;">${item.topic_B}</a></li>
            <li class="clearfix"><i class="fl">C、</i><a href="#" class="fl" style="word-break: break-all;">${item.topic_C}</a></li>
            <li class="clearfix"><i class="fl">D、</i><a href="#" class="fl" style="word-break: break-all;">${item.topic_D}</a></li>
        </ul>
    </div>
</c:forEach>
<div class="Cy_TItle1">
    <h2>二.填空题<em style="font-size:12px;font-style:normal;"></em></h2>
</div>
<c:forEach items="${Text}" var="item">
    <div class="TiMu" style="position:relative">
        <div class="Zy_TItle clearfix">
            <p onclick="deleteTopic(${item.topic_id})" style="cursor: pointer";>删除</p>
            <div class="clearfix" style="line-height: 35px; font-size: 14px;width:870px;">
                <div style="width:80%;float:left;">
                    <p><span style="font-size:14px;font-family:宋体;padding-right: 10px;">
                            ${item.topic_name}
                    </span >
                            ${item.topic_des}
                    </p>
                </div>
            </div>
        </div>
        <div class="Py_answer clearfix">
            <p class="font14">我的答案：
            </p>
            <div>
                <div class="font14">
                    <div style="font-size: 14px;" class="clearfix">
                        <input type="text" placeholder="${item.topic_text}">
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
<div class="Cy_TItle1">
    <h2>二.文件上传题<em style="font-size:12px;font-style:normal;"></em></h2>
</div>
<c:forEach items="${Doc}" var="item">
    <div class="TiMu" style="position:relative">
        <div class="Zy_TItle  clearfix">
            <p onclick="deleteTopic(${item.topic_id})" style="cursor: pointer";>删除</p>
            <div class="clearfix" style="line-height: 35px; font-size: 14px;width:870px;">${item.topic_des}>
            </div>
            <input type="file" value="${item.topic_text}">
        </div>
    </div>
</c:forEach>


<div class="tijiao">
    <button onclick="homeworkOK(${NowHomeWork.homework_id})">提交</button>
</div>
<script>
    function homeworkOK(id) {
        $.post("${pageContext.request.contextPath}/homeworkOK",{"id":id},
            function (data) {
                if (data==="OK"){
                    alert("已提交");
                    window.location.reload();
                } else {
                    alert("提交失败");
                    window.location.reload();
                }
            }
        )
    }
</script>
</body>
</html>
