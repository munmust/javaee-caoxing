<%--
  Created by IntelliJ IDEA.
  User: H
  Date: 2018/12/18
  Time: 23:50
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


        .left {
            float: left;
            width: 634px;
        }
        .continue-study {
            height: 37px;
            background: #f0f0f0;
            border: 1px solid #ddd;
            line-height: 37px;
            font-size: 18px;
            padding: 10px 10px 10px 20px;
        }
        .left .content, .left .content1 {
            position: relative;
            border: 1px solid #ddd;
            background: #fff;
            padding-bottom: 30px;
            padding-top: 15px;
        }
        .wwc {
            padding: 20px 0 35px 20px;
            background: #fff;
            margin-bottom: 0;
        }
        .wwc {
            height: 20px;
            line-height: 20px;
            margin-bottom: 10px;
            font-size: 16px;
            color: #555;
        }
        .left .timeline {
            padding: 0px 10px 0px 20px;
        }
        .units {
            margin-bottom: 20px;
        }
        .units h2 {
            font-size: 16px;
            font-weight: normal;
            height: 28px;
            line-height: 28px;
            margin-bottom: 15px;
            color: #000;
        }

        .units .numbers {
            width: 53px;
            height: 28px;
            display: inline-block;
            float: left;
            margin-right: 30px;
        }
        .units .numbers b {
            width: 20px;
            height: 20px;
            font-size: 12px;
            display: inline-block;
            text-align: center;
            margin-left: 28px;
            font-weight: normal;
            color: #636b6f;
        }
        .units h2 a {
            color: #000;
        }
        .leveltwo {
            color: #999;
        }
        .leveltwo h3 {
            font-weight: normal;
            margin-top: 1px;
            color: #555;
            width: 100%;
        }
        .leveltwo h3 .icon {
            display: inline-block;
            height: 25px;
            line-height: 25px;
            font-size: 14px;
            color: #999;
            width: 82px;
            text-align: right;
        }
        .timeline em.openlock {
            background-position: -36px 0px;
        }
        .leveltwo h3 .articlename {
            margin-left: 5px;
            font-size: 12px;
        }
        .leveltwo h3 .articlename a {
            font-size: 14px;
        }
        a {
            color: #202020;
            text-decoration: none;
        }
        .clearfix:after {
            content: "";
            display: block;
            height: 0;
            font-size: 0;
            clear: both;
            overflow: hidden;
        }
        .right{
            margin-left:50px ;
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
                    <li><a href="${pageContext.request.contextPath}/toHomeWork">作业 </a><i class="workTip"></i></li>
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
            <span class="articleschool" style="text-decoration: none;">
                <span title=" ${Class.class_name}">
                <font color="#333">
                    <span title=""></span>
                </font>&nbsp;<a href="#">课程评价</a>
                </span>
            </span>
        </h1>
    </div>
</div>
<div class="left" style="width:634px">
    <div class="continue-study" style="border-bottom:0px;border-radius: 5px 5px 0 0;">

        <span class="charter" style="font-size:16px;color:#333"> 目录 </span>
    </div>
    <div class="content1 roundcorner">
        <div class="wwc" style="padding-bottom:0px;"></div>
        <div id="msg_notice" style="display: none;padding-bottom:0px;">
        </div>
        <div class="timeline">
            <div class="units">
                <h2><span class="numbers"><b>1</b></span>
                    <a href="#" title="第一单元" style="cursor:default">
                        第一单元
                    </a>
                </h2>
                <!-- 第二级开始  -->
                <div class="leveltwo">
                    <h3 class="clearfix">
                        <span class="icon"> <span class="chapterNumber">1.1</span>
																	                    											                            														                     													     <em class="openlock"></em>
                        </span><span class="articlename">
                        <a href="#"
                           title="第一课时">
                            第一课时
                        </a>
                    </span>
                    </h3>
                    <!-- 第三级级开始  -->
                    <!-- 第三级结束  -->
                </div>
                <div class="leveltwo">
                    <h3 class="clearfix">
                        <span class="icon"> <span class="chapterNumber">1.2</span>
                            <em class="blank" title="闯关模式发放"></em>
                        </span>
                        <span class="articlename">
                            <a href="#"
                               title="第二课时">
                                第二课时
                            </a>
                        </span>
                    </h3>
                    <!-- 第三级级开始  -->
                    <!-- 第三级结束  -->
                </div>
                <!-- 第二级结束  -->
            </div>
            <div class="units">
                <h2><span class="numbers"><b>2</b></span>
                    <a href="#" title="第二单元" style="cursor:default">
                        第二单元
                    </a>
                </h2>
                <!-- 第二级开始  -->
                <div class="leveltwo">
                    <h3 class="clearfix">
                        <span class="icon"> <span class="chapterNumber">2.1</span>
                            <em class="blank" title="闯关模式发放"></em>
                        </span>
                        <span class="articlename">
                            <a href="#" title="第一课时">
                                第一课时</a>
                        </span>
                    </h3>
                    <!-- 第三级级开始  -->
                    <!-- 第三级结束  -->
                </div>
                <div class="leveltwo">
                    <h3 class="clearfix">
                        <span class="icon"> <span class="chapterNumber">2.2</span>
                            <em class="openlock"></em>
                        </span>
                        <span class="articlename">
                            <a href="#"
                               title="第二课时">
                                第二课时
                            </a>
                        </span>
                    </h3>
                    <!-- 第三级级开始  -->
                    <!-- 第三级结束  -->
                </div>
                <!-- 第二级结束  -->
            </div>
            <div class="units">
                <h2><span class="numbers"><b>3</b></span>
                    <a href="javascript:void(0)" title="第三单元" style="cursor:default">
                        第三单元
                    </a>
                </h2>
                <!-- 第二级开始  -->
                <div class="leveltwo">
                    <h3 class="clearfix">
                        <span class="icon"> <span class="chapterNumber">3.1</span>
                            <em class="blank"
                                title="闯关模式发放"></em>
                        </span>
                        <span class="articlename">
                            <a href="#" title="第一课时">第一课时
                            </a>
                        </span>
                    </h3>
                    <!-- 第三级级开始  -->
                    <!-- 第三级结束  -->
                </div>
                <div class="leveltwo">
                    <h3 class="clearfix">
                        <span class="icon"> <span
                                class="chapterNumber">3.2</span>
                            <em class="blank" title="闯关模式发放"></em>
                        </span>
                        <span class="articlename">
                            <a href="#" title="第二课时">
                                第二课时
                            </a>
                        </span>
                    </h3>
                    <!-- 第三级级开始  -->
                    <!-- 第三级结束  -->
                </div>
                <!-- 第二级结束  -->
            </div>
        </div>
    </div>
</div>
<div class="right">
    <h2>课程名称：${Class.class_name}</h2>
    <h3>课程创建者：${Class.create_user_name}</h3>
    <h3>课程创建时间：${Class.create_time}</h3>
</div>
</body>
</html>
