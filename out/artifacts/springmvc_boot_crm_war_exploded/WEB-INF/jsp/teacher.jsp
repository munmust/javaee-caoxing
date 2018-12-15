<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: H
  Date: 2018/12/6
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        blockquote, body, button, dd, div, dl, dt, form, h1, h2, h3, h4, h5, h6, input, li, ol, p, pre, td, textarea, th, ul {
            margin: 0;
            padding: 0;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        }
        img {
            display: inline-block;
            border: none;
        }
        .leftSide {
            width: 220px;
            background: #f9f9f9;
        }
        .fl {
            float: left;
        }
        .fl {
            float: left;
        }
        .personalInfor {
            height: 165px;
            background:#faf7f5 bottom center;
            padding-top: 15px;
            text-align: center;
        }
        a {
            color: #333;
        }
        .layui-laypage a, a {
            text-decoration: none;
        }
        .personalName {
            font-size: 18px;
            height: 44px;
            line-height: 44px;
        }
        .manageBtn {
            display: inline-block;
            width: 74px;
            height: 26px;
            border-radius: 20px;
            background: #faa046;
            line-height: 26px;
            color: #fff;
            font-size: 14px;
        }
        .funclistul {
            margin-top: 20px;
        }
        .funclistul li {
            min-height: 41px;
            overflow: hidden;
        }
        li {
            list-style: none;
        }
        .funclistul li.current span {
            background: #0099ff;
        }
        .funclistul li span {
            display: inline-block;
            width: 3px;
            height: 23px;
            margin-top: 8px;
            float: left;
        }
        .funclistul li.current a {
            color: #0099ff;
        }
        .funclistul li a {
            display: block;
            width: 200px;
            margin-left: 10px;
            float: left;
            min-height: 40px;
            font-size: 14px;
            color: #4c4c4c;
        }
        .manageApp {
            background: #f0f1f2;
            height: 36px;
            line-height: 36px;
            padding: 0 20px;
            text-align: right;
        }
        .rightF {
            float: right;
        }
        .ewm {
            width: 126px;
            text-align: center;
            padding-top: 28px;
            margin: 0 auto;
            padding-bottom: 25px;
        }
        .ewm p {
            padding-top: 18px;
        }


        .zla_m_tab {
            display: flex;
            width:70%;
            height: 40px;
            padding-top: 12px;
            border-bottom: 2px #ccc solid;
            margin-top: 20px;
            font-size: 20px;
            color: #777;

        }
        .zla_m_tab li{
            margin:0 30px;
            text-decoration: none;
        }
        .zla_m_tab li:nth-of-type(1){
            font-size: 25px;
            margin-bottom: -5px;
        }

        .Addkc a {
            font-size: 14px;
            color: #0099ff;
        }


        .ulDiv ul li {
            width: 270px;
            margin-bottom: 32px;
            height: 280px;
            float: left;
            zoom: 1;
            letter-spacing: 0;
            overflow: hidden;
            margin-right: 16px;
            margin-left: 30px;
            border: 1px solid #dbdbdb;
            background: #f3f3f3;
        }
        .Mcon1img {
            position: relative;
        }
        .Mconright {
            padding: 0 10px;
            border-top: 1px solid #dbdbdb;
        }
        .Mconright h3 {
            font-size: 18px;
            padding: 5px 0;
        }
        .Mconright h3 a {
            float: left;
        }
        .Mconright h3 i {
            display: none;
            width: 8px;
            height: 8px;
            background: red;
            border-radius: 8px;
            margin-left: 5px;
            float: left;
        }
        .Mconright p {
            color: #666;
            font-size: 12px;
        }
        .Mdelc2dt {
            display: block;
            width: 268px;
            border: 1px dashed #ccc;
            background: #f6f6f6;
            display: flex;
            align-content: center;
            justify-content: center;
        }
        .Mdelc2dt span {
            display: block;
            width: 100px;
            height: 100px;
            background: url("${pageContext.request.contextPath}/images/addkc_new.png") no-repeat -4px -17px;
            margin: 0 auto;
            -webkit-transition: background-position 0.5s;
            -moz-transition: background-position 0.5s;
            -ms-transition: background-position 0.5s;
            transition: background-position 0.5s;
        }
    </style>
</head>
<body>

<div class="fl leftSide">
    <div class="personalInfor">
        <div id="space_nickname">
            <a href="#" class="headPortrait">
                <img id="mainphoto" src="${pageContext.request.contextPath}/images/background1.jpg" width="80" height="80">
            </a>
            <p class="personalName" title="${User.user_name}" style="text-align:center;display:block;overflow:hidden;word-break:keep-all;white-space:nowrap;text-overflow:ellipsis;">${User.user_name}</p>
            <a href="#" class="manageBtn">
                账号管理				</a>
        </div>
    </div>
    <div class="funclist">
        <ul class="funclistul" style="position:relative">
            <li class="current" id="li_zne_kc_icon">
                <span></span>
                <a class="currentpage" id="zne_kc_icon" href="#" target="_top">
                    <b class="liticons znewyun zne_kc_icon"></b>
                    <em>课堂	     </em>
                </a>
            </li>
            <li id="li_zne_tz_icon">
                <span></span>
                <a id="zne_tz_icon" href="#" target="_top">
                    <b class="liticons znewyun zne_tz_icon"></b>
                    <em>通知	     </em>
                </a>
            </li>
            <li id="li_zne_tkc_icon">
                <span></span>
                <a id="zne_tkc_icon" href="#" target="_top">
                    <b class="liticons znewyun zne_xx_icon"> </b>
                    <em>专题创作		</em>
                </a>
            </li>
            <li id="li_zne_bj_icon">
                <span></span>
                <a id="zne_bj_icon" href="#" target="_top">
                    <b class="liticons znewyun zne_bj_icon"></b>
                    <em>笔记	     </em>
                </a>
            </li>
            <li id="li_zne_yp_icon">
                <span></span>
                <a id="zne_yp_icon" href="#" target="_top">
                    <b class="liticons znewyun zne_yp_icon"></b>
                    <em>电脑同步云盘	     </em>
                </a>
            </li>
            <li id="li_zne_dc_icon">
                <span></span>
                <a id="zne_dc_icon" href="#">
                    <b class="liticons znewyun zne_dc_icon"></b>
                    <em>调查问卷	     </em>
                </a>
            </li>
        </ul>
        <p class="manageApp"><a href="#" class="rightF"><i></i>管理应用</a></p>
        <div class="ewm">
            <img src="#" width="126" height="126">
            <p>扫一扫下载手机应用</p>
        </div>
    </div>
</div>
<div class="Wrapbody">
    <ul class="zla_m_tab" id="zla_title">
        <li class=""><a href="#">我学的课</a></li>
        <li><a style="color: #2e6da4;text-decoration: none" href="#"data-toggle="modal"
               data-target="#newCustomerDialog"  >添加课程</a></li>
    </ul>
    <div class="zmodel" style="display: block;">
    <div class="ulDiv" style="    margin-top: 30px;overflow: hidden;font-family: Microsoft YaHei;">
    <ul class="class_list" >
    <c:forEach items="${ClassList}" var="item" varStatus="status">

        <li id="${item.class_id}" style="position:relative" onclick="clickClass(${item.class_id})">
            <div class="Mcon1img httpsClass">
                <a href="#">
                    <img src="#" width="270" height="169">
                </a>
            </div>
            <div class="Mconright httpsClass">
                <h3 class="clearfix">
                    <a href="#" title="${item.class_name}">${item.class_name}</a>
                    <i style="display: block;"> </i>
                </h3>
                <p></p>
                <p> ${item.create_user_name} </p>
                <p>${item.class_des}</p>
                <p class="Mconrightp3" style="display:none;">
                </p>
            </div>
        </li>
    </c:forEach>
        <li>
            <div  data-toggle="modal"
            data-target="#newCustomerDialog">
                <a href="#" class="Mdelc2dt" style="height: 202px;padding-top: 76px;" title="添加课程"><span></span></a>
            </div>
        </li>
    </ul>
    </div>
    </div>
</div>
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabels">新建课程信息</h4>
            </div>
            <div class="modal-body">
                <form action="${pageContext.request.contextPath}/addClass" method="post"  class="form-horizontal" id="new_customer_form" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="new_className" class="col-sm-2 control-label">
                            课程名称
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_className" placeholder="课程名称" name="class_name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_classDes" class="col-sm-2 control-label">
                            课程简介
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_classDes" placeholder="课程简介" name="class_des" />
                        </div>
                    </div>
                    <div class="form-group">
                            <input type="file" class="form-control" id="newclass_img" placeholder="课程照片上传" name="img"/>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="submit" class="btn btn-primary">创建课程</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>






<script>
    function clickClass(id) {
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/classDetail",
            data:{"class_id":id},
            success:function (data) {
                window.location="${pageContext.request.contextPath}"+data;
            }
        })
    }
</script>
</body>
</html>
    `