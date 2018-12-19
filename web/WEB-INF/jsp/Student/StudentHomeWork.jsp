<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<%--
  Created by IntelliJ IDEA.
  User: H
  Date: 2018/12/19
  Time: 0:04
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


        .radiusBG {
            height: auto !important;
            height: 700px;
            min-height: 700px;
            padding: 0 40px;
            background-color: #FFF;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            -ms-border-radius: 3px;
            border-radius: 3px;
        }
        .CeYan {
            padding: 5px;
        }
        .CyTop {
            height: 42px;
            border-bottom: solid 2px #d9d9d9;
            padding-top: 12px;
            line-height: 42px;
        }
        ul, ol, dl {
            list-style: none;
        }
        .CyTop ul.ul01 li.cur {
            border-bottom: solid 2px #7b9e31;
        }
        .CyTop ul.ul01 li {
            float: left;
            position: relative;
            height: 42px;
            color: #999;
        }
        .CyTop ul.ul01 li.cur a {
            color: #202020;
        }
        .CyTop ul.ul01 li a {
            padding: 0 12px;
            font-size: 16px;
        }
        .CyTop ul.ul01 li.cur b {
            position: absolute;
            width: 11px;
            height: 8px;
            left: 45%;
            top: 36px;
            display: none;
        }
        .CyTop ul.ul01 li a {
            padding: 0 12px;
            font-size: 16px;
            color: #999;
        }
        .ulDiv {
            overflow: hidden;
            font-family: "Microsoft YaHei";
        }
        .ulDiv ul {
            padding-bottom: 25px;
            position: relative;
            margin-right: -30px;
        }
        .clearfix {
            overflow: hidden;
            zoom: 1;
        }
        .ulDiv ul li {
            height: 152px;
            position: relative;
        }
        .ulDiv ul li {
            width: 315px;
            padding: 10px 0 10px 0;
            background-color: #fff;
            float: left;
            _display: inline;
            zoom: 1;
            letter-spacing: 0;
            overflow: hidden;
            margin-right: 22px;
        }
        li {
            display: list-item;
            text-align: -webkit-match-parent;
        }
        .ulDiv ul li .titTxt {
            height: 195px;
        }
        .ulDiv ul li .titTxt {
            border: 1px solid #e1e1e1;
            border-bottom: 0;
            padding: 0 10px 10px;
            overflow: hidden;
        }
        .ulDiv ul li .titTxt p {
            color: #333;
            font-size: 16px;
            font-family: Microsoft YaHei;
            padding: 1px 0;
        }
        .ulDiv ul li .titTxt p a {
            color: #333;
            font-weight: bold;
        }
        a {
            text-decoration: none;
        }
        .ulDiv ul li .titTxt span {
            display: block;
            color: #424242;
            font-size: 12px;
        }
        .pt5 {
            padding: 5px 0;
        }

        .ulDiv ul li.lookLi .titOper {
        }
        .ulDiv ul li .titOper {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 293px;
        }
        .ulDiv ul li .titOper {
            background-color: #e8eeda;
            height: 50px;
            color: #fff;
            padding: 0 10px;
            overflow: hidden;
            border: solid 1px #CCC;
            display: flex;
            flex-direction: column;
        }
        .ulDiv ul li .titOper p {
            padding-top: 12px;
        }
        .ulDiv ul li .titOper p a {
            letter-spacing: 0;
        }
        .Btn_blue_1 {
            height: 25px;
        }
        .fr {
            float: right;
        }
        .Btn_blue_1 {
            display: inline-block;
            height: 28px;
            padding: 0 10px;
            background: #7b9e31;
            font-size: 14px;
            color: #FFF;
            line-height: 28px;
            cursor: pointer;
            border-radius: 3px;
        }
        .ulDiv ul li .shadow {
            height: 7px;
            font-size: 0;
            overflow: hidden;
            display: none;
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
	<span title="${Class.class_name}">
	<a href="#">
        ${Class.class_name}
    </a></span>
        </h1>
    </div>
</div>
<div class="radiusBG">
    <div class="CeYan">

        <!--切换列表-->
        <div class="CyTop">
            <ul class="ul01">
                <li class="cur">
                    <a href="#" title="">我的作业</a>
                    <b></b>&nbsp;&nbsp;&nbsp;|<b></b>
                </li>
                <li>
                    <a href="#" title="待批作业">待批作业</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="ulDiv">
        <ul class="clearfix" style="*width:1020px;">
            <c:forEach items="${OpenHomeWork}" var="item">
                <li class="lookLi" style="padding:30px 0;height:300px;">
                    <div class="titTxt">
                        <p style="padding-top:11px;">
                            <a href="${pageContext.request.contextPath}/ShowTopic" onclick="toTopic(${item.homework_id})"  title="${item.homework_name}">
                                    ${item.homework_name}
                            </a>
                        </p>
                        <span title="" class="pt5"><span class="fl">开始时间：</span>${item.create_time}</span>
                        <span title="" class="pt5"><span class="fl">截止时间：</span>${item.end_time}</span>
                        <span title="" class="pt5"><span class="fl">作业状态：</span><strong><c:choose>
                            <c:when test="${item.homework_type eq 0}">未发布</c:when>
                            <c:otherwise>已发布</c:otherwise>
                        </c:choose></strong></span>
                    </div>
                    <div class="titOper" style="width: 300px; display: flex; flex-direction: row;justify-content: space-around">
                    <span style="color:red;font-weight:bold;font-size:18px;line-height:45px;" >
                        <c:choose>
                            <c:when test="${item.homework_type eq 1}">已发布</c:when>
                            <c:otherwise>已截止</c:otherwise>
                        </c:choose></span>
                        <p style="float:none;" class="clearfix">
                            <a class="Btn_blue_1" href="#">
                                <span >
                                    <c:choose>
                                        <c:when test="${item.homework_type eq 1}" >查看</c:when>
                                        <c:otherwise >还未发布的作业</c:otherwise>
                                    </c:choose></span>
                            </a>
                        </p>
                    </div>
                    <div class="shadow"></div>
                </li>
            </c:forEach>
        </ul>
    </div>
    <div class="page"></div>
</div>
<script>
    function toTopic(homework_id) {
        $.post("${pageContext.request.contextPath}/ToTopic",{"homework_id":homework_id}),function (data) {
            console.log("OK");
        };
    }
</script>
</body>
</html>
